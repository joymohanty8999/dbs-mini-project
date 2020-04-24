package StudentQueries.FoodPref;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class CountController 
{
    @FXML
    private Button CountLoad;

    @FXML
    private TextField VegCount;
    
    @FXML
    private TextField NonVegCount;
    
    @FXML
    private Button VegList;

    @FXML
    private Button NonVegList;

    @FXML
    void onShow(ActionEvent event) throws ClassNotFoundException 
    {
    	try
    	{
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		
    		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Joseph","Ankita123$");
    		
    		String query1 = "select count(*) from food_pref where FoodPref = 'Vegetarian'";
    		String query2 = "select count(*) from food_pref where FoodPref = 'Non-Vegetarian'";
    		
    		ResultSet rs1 = con.createStatement().executeQuery(query1);
    		ResultSet rs2 = con.createStatement().executeQuery(query2);
    		
    		if(rs1.next() && rs2.next())
    		{
    			VegCount.setText(rs1.getString(1));
    			NonVegCount.setText(rs2.getString(1));
    		}
    		
    		con.close();
    	}
    	
    	catch(SQLException e)
		{
			e.printStackTrace();
		}
    }
    
    @FXML
    void onVegNext(ActionEvent event) 
    {
    	try
    	{
    		AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("VegList.fxml"));
    		Stage primaryStage = new Stage();
			Scene scene = new Scene(root);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("Vegetarian List");
			primaryStage.show();
    	}
    	
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }

    @FXML
    void onNonVegNext(ActionEvent event) 
    {
    	try
    	{
    		AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("NonVegList.fxml"));
    		Stage primaryStage = new Stage();
			Scene scene = new Scene(root);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("Non-Vegetarian List");
			primaryStage.show();
    	}
    	
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }

}
