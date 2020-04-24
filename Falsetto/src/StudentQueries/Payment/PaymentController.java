package StudentQueries.Payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class PaymentController 
{
	private ObservableList<DueDetails>data;
	
	@FXML
    private TableColumn<DueDetails, String> tblLName;

    @FXML
    private Button btnLoad;

    @FXML
    private TableColumn<DueDetails, String> tblFName;

    @FXML
    private TableView<DueDetails> tblDetails;

    @FXML
    private TableColumn<DueDetails, String> tblRegNo;
    
    @FXML
    private TableColumn<DueDetails, String> tblPending;

    @FXML
    void onShow(ActionEvent event) throws ClassNotFoundException 
    {
    	data = FXCollections.observableArrayList();
		tblRegNo.setCellValueFactory(new PropertyValueFactory<>("regNo"));
		tblFName.setCellValueFactory(new PropertyValueFactory<>("fName"));
		tblLName.setCellValueFactory(new PropertyValueFactory<>("lName"));
		tblPending.setCellValueFactory(new PropertyValueFactory<>("pending"));
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 
		 	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Joseph","Ankita123$");
		 	
		 	String sql = "select S.regNO,S.first_name,S.last_name,50000-P.pays as Pending_amt from student S, Pays P where S.RegNo = P.RegNo and P.Pays<50000";
		 	
		 	ResultSet rs = con.createStatement().executeQuery(sql);
		 	
		 	while(rs.next())
		 	{
		 		data.add(new DueDetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
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
}
