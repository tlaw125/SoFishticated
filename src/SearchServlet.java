import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// Declaring a WebServlet called SingleStarServlet, which maps to url "/api/single-star"
@WebServlet(name = "SearchServlet", urlPatterns = "/api/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	// Create a dataSource which registered in web.xml
	@Resource(name = "jdbc/sofishdb")
	private DataSource dataSource;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("application/json"); // Response mime type 

		// Retrieve parameter id from url request.
		String searchBy = request.getParameter("searchBy");
		String searchQuery = request.getParameter("searchQuery");
		String[] searchParams = searchQuery.split(" ");
		String normalSearchQuery = "";
		for(int i=0; i<searchParams.length; i++) {
			normalSearchQuery += "+" + searchParams[i]+ "*";
			if(i!=searchParams.length-1) {
				normalSearchQuery += " ";
			}
		}
//		System.out.println("normalSearchQuery: " + normalSearchQuery);
		//		String sortAttr = request.getParameter("sortBy");
		String limit = request.getParameter("numVals");
		String offset = request.getParameter("firstVal");


		// Output stream to STDOUT
		PrintWriter out = response.getWriter();

		try {

			Context initCtx = new InitialContext();

			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			if (envCtx == null)
				out.println("envCtx is NULL");

			// Look up our data source
			DataSource ds = (DataSource) envCtx.lookup("jdbc/sofishdb");

			if (ds == null)
				out.println("ds is null.");

			Connection connection = ds.getConnection();
			if (connection == null)
				out.println("dbcon is null.");

			PreparedStatement statement = null;
			String query="";
			
			if(searchBy.equals("Fish")) {
				query = "SELECT id, commonName, family, careLvl, imagePath FROM fish "  
						+ "WHERE MATCH (commonName) AGAINST (? IN BOOLEAN MODE) " 
						+ "GROUP BY id ORDER BY MAX(commonName) ASC LIMIT "
						+ limit + " OFFSET " + offset;
			}

			else if(searchBy.equals("Plants")) {
				query = "SELECT id, name, type, careLvl, imagePath FROM plants "  
						+ "WHERE MATCH (name) AGAINST (? IN BOOLEAN MODE) " 
						+ "GROUP BY id ORDER BY MAX(name) ASC LIMIT "
						+ limit + " OFFSET " + offset;
			}
			else {
				query = "SELECT id,commonName, type, careLvl, imagePath FROM shrimp "  
						+ "WHERE MATCH (commonName) AGAINST (? IN BOOLEAN MODE) " 
						+ "GROUP BY id ORDER BY MAX(commonName) ASC LIMIT "
						+ limit + " OFFSET " + offset;
			}

			// Declare our statement
			statement = connection.prepareStatement(query);
			statement.setString(1, normalSearchQuery);

//			System.out.println(statement);
			// Perform the query
			ResultSet resultSet = statement.executeQuery();

			JsonArray jsonArray = new JsonArray();

			while (resultSet.next()) {
				String Id = resultSet.getString("id");
				String Name = "";
				String type = "";
				if(searchBy.equals("Fish")) {
					Name = resultSet.getString("commonName");
					type = resultSet.getString("family");
				}
				else if(searchBy.equals("Plants")) {
					Name = resultSet.getString("name");
					type = resultSet.getString("type");
				}
				else {
					Name = resultSet.getString("commonName");
					type = resultSet.getString("type");
				}
				String careLvl = resultSet.getString("careLvl");
				String image = resultSet.getString("imagePath");
				
				JsonObject jsonObject = new JsonObject();
				jsonObject.addProperty("id", Id);
				jsonObject.addProperty("name", Name);
				jsonObject.addProperty("type", type);
				jsonObject.addProperty("careLvl", careLvl);
				jsonObject.addProperty("imagePath", image);

//				System.out.println(jsonObject);
				jsonArray.add(jsonObject);
			}

			// write JSON string to output
			out.write(jsonArray.toString());
			// set response status to 200 (OK)
			response.setStatus(200);

			resultSet.close();
			statement.close();
			connection.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
			while (ex != null) {
				System.out.println("SQL Exception:  " + ex.getMessage());
				ex = ex.getNextException();
			} // end while
		} // end catch SQLException
		catch (Exception e) {
			// write error message JSON object to output
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("errorMessage", e.getMessage());
			out.write(jsonObject.toString());

			// set response status to 500 (Internal Server Error)
			response.setStatus(500);
		}
		out.close();


	}
	///////////////////////////////////////////////

}
