package StudentQueries.Payment;

//find the registration number, name of students with pending fees along with certain contact details

import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.fxml.FXMLLoader;

public class Main extends Application
{	
	public void start(Stage primaryStage)
	{
		try
		{
			AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("PendingPayment.fxml"));
			Scene scene = new Scene(root);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("Students with pending fee payment");
			primaryStage.show();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static void main(String [] args)
	{
		launch(args);
	}
}
