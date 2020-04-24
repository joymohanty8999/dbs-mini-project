package StudentQueries.StudentDetails;

//To display student info : First Name, Last Name, Age, Student's Phone No and Hostel Block

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
			AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("Details.fxml"));
			Scene scene = new Scene(root);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("Student Details");
			primaryStage.show();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args)
	{
		launch(args);
	}
}
