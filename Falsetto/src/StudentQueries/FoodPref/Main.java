package StudentQueries.FoodPref;

//To display number of students who have Veg/Non-Veg preferences and to get the list

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
			AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("Count.fxml"));
			Scene scene = new Scene(root);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("Preferences");
			primaryStage.show();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static void main(String args[])
	{
		launch(args);
	}

}
