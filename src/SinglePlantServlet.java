import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class SinglePlantServlet
 */
@WebServlet("/api/single-plant")
public class SinglePlantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SinglePlantServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// set response mime type
		response.setContentType("application/json"); // Response mime type 

		// Retrieve parameter id from url request.
		String id = request.getParameter("id");

		// get the printwriter for writing response
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
			// prepare query
			
			String query = "SELECT * FROM plants WHERE id=?";


			// declare statement
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1, id);
//			System.out.println(statement);
			// execute query
			ResultSet resultSet = statement.executeQuery();

			JsonArray jsonArray = new JsonArray();


			// Iterate through each row of resultSet
			while (resultSet.next()) {    			
				String plantId = resultSet.getString("id");
				String plantName = resultSet.getString("name");
				String plantType = resultSet.getString("type");
				String careLvl = resultSet.getString("careLvl");
				String growth = resultSet.getString("growth");
				String light = resultSet.getString("light");
				String co2 = resultSet.getString("co2");
				String imagePath = resultSet.getString("imagePath");
				String desc = resultSet.getString("description");

				// Create a JsonObject based on the data we retrieve from resultSet
				JsonObject jsonObject = new JsonObject();
				jsonObject.addProperty("plantId", plantId);
				jsonObject.addProperty("name", plantName);
				jsonObject.addProperty("type", plantType);
				jsonObject.addProperty("careLvl", careLvl);
				jsonObject.addProperty("growth", growth);
				jsonObject.addProperty("light", light);
				jsonObject.addProperty("co2", co2);
				jsonObject.addProperty("imagePath", imagePath);
				jsonObject.addProperty("description", desc);

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
