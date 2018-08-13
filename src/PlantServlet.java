import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;




/**
 * Servlet implementation class PlantServlet
 */
@WebServlet("/api/plant-list")
public class PlantServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// set response mime type
		response.setContentType("application/json"); // Response mime type 

		String sortAttr = request.getParameter("sortBy");
		String limit = request.getParameter("numVals");
		String offset = request.getParameter("firstVal");
		String sortAttr2 = "ASC";
		if (sortAttr.equals("title")) {sortAttr2 = "ASC";}

		PrintWriter out = response.getWriter();	


		try {

			Context initCtx = new InitialContext();

			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			if (envCtx == null)
				out.println("envCtx is NULL");

			DataSource ds = (DataSource) envCtx.lookup("jdbc/sofishdb");

			if (ds == null)
				out.println("ds is null.");

			Connection connection = ds.getConnection();
			if (connection == null)
				out.println("dbcon is null.");

			String query = "SELECT id, name, type, careLvl, imagePath FROM plants GROUP BY name ORDER BY MAX(" + sortAttr + ") " + sortAttr2 + " LIMIT " + limit + " OFFSET " + offset;

			// declare statement
			PreparedStatement statement = connection.prepareStatement(query);

//			System.out.println(statement);
			// execute query
			ResultSet resultSet = statement.executeQuery();

			JsonArray jsonArray = new JsonArray();


			// Iterate through each row of resultSet
			while (resultSet.next()) {    			
				String plantId = resultSet.getString("id");
				String plantName = resultSet.getString("name");
				String plantType = resultSet.getString("type");
				String plantCare = resultSet.getString("careLvl");
				String image = resultSet.getString("imagePath");

				// Create a JsonObject based on the data we retrieve from resultSet
				JsonObject jsonObject = new JsonObject();
				jsonObject.addProperty("plantId", plantId);
				jsonObject.addProperty("name", plantName);
				jsonObject.addProperty("type", plantType);
				jsonObject.addProperty("careLvl", plantCare);
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
}