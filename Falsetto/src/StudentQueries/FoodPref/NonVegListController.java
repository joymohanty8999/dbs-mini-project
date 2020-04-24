package StudentQueries.FoodPref;

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

public class NonVegListController 
{
	private ObservableList<Details>data;
	
	@FXML
    private TableView<Details> tblDetails;
	
	@FXML
    private TableColumn<Details, String> tblFName;

	@FXML
    private TableColumn<Details, String> tblLName;
	
	@FXML
    private TableColumn<Details, String> tblAllergy;
	
	@FXML
    private Button btnLoad;
    
	@FXML
    void onShow(ActionEvent event) throws ClassNotFoundException 
	{
		data = FXCollections.observableArrayList();
		tblFName.setCellValueFactory(new PropertyValueFactory<>("fName"));
    	tblLName.setCellValueFactory(new PropertyValueFactory<>("lName"));
    	tblAllergy.setCellValueFactory(new PropertyValueFactory<>("allergy"));
				
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Joseph","Ankita123$");
			
			String sql = "select S.first_name,S.last_name,nvl(F.Allergic_To,'None') from student S, food_Pref F where S.RegNo = F.RegNo and F.FoodPref = 'Non-Vegetarian'";
			
			ResultSet rs = con.createStatement().executeQuery(sql);
			
			while(rs.next())
			{
				data.add(new Details(rs.getString(1),rs.getString(2),rs.getString(3)));
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
