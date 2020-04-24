package StudentQueries.Payment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class PendingController 
{
	private ObservableList<PendingDetails>data;
	
	@FXML
    private TableView<PendingDetails> tblDetails;
	
	@FXML
    private TableColumn<PendingDetails, String> tblRegNo;
	
	 @FXML
	 private TableColumn<PendingDetails, String> tblFName;
	 
	 @FXML
	 private TableColumn<PendingDetails, String> tblLName;
	 
	 @FXML
	 private TableColumn<PendingDetails, String> tblStPh;
	 
	 @FXML
	 private TableColumn<PendingDetails, String> tblParPh;

	 @FXML
	 private TableColumn<PendingDetails, String> tblFee;
	 
	 @FXML
	 private Button btnLoad;
	 
	 @FXML
	 private Button btnNext;
	 
	 @FXML
	 void onShow(ActionEvent event) throws ClassNotFoundException 
	 {
		 data = FXCollections.observableArrayList();
		 tblRegNo.setCellValueFactory(new PropertyValueFactory<>("regNo"));
		 tblFName.setCellValueFactory(new PropertyValueFactory<>("fName"));
		 tblLName.setCellValueFactory(new PropertyValueFactory<>("lName"));
		 tblStPh.setCellValueFactory(new PropertyValueFactory<>("StPhone"));
		 tblParPh.setCellValueFactory(new PropertyValueFactory<>("ParPhone"));
		 tblFee.setCellValueFactory(new PropertyValueFactory<>("Paid"));
		 
		 try 
		 {
		 	Class.forName("oracle.jdbc.driver.OracleDriver");
		 
		 	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Joseph","Ankita123$");
		 	
		 	String sql = "select S.RegNo,S.first_name,S.last_name, Sc.Student_Phone_No, Sc.Parent_Phone_No, P.pays from student S, student_contact_details Sc, Pays P where S.RegNo = Sc.RegNo and Sc.RegNo = P.RegNo and P.pays<50000";
		 	
		 	ResultSet rs = con.createStatement().executeQuery(sql);
		 	
		 	while(rs.next())
		 	{
		 		data.add(new PendingDetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
		 	}
		 	
		 	tblDetails.setItems(null);
		 	tblDetails.setItems(data);
		 
		 	con.close();
		 }
		 
		 catch(SQLException e)
		 {
			 e.printStackTrace();
		 }
	 }

	 @FXML
	 void onNext(ActionEvent event) throws IOException 
	 {
		AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("PaymentDue.fxml"));
		Stage primaryStage = new Stage();
		Scene scene = new Scene(root);
		scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
		primaryStage.setScene(scene);
		primaryStage.setTitle("Amount to be paid");
		primaryStage.show();
	 }
}
