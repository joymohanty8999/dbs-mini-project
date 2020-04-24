package StudentQueries.StudentDetails;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class StudentController 
{
	@FXML
    private TextField RegID;
	
	@FXML
    private Button btnLoad;
	
	@FXML
    private TextField FNameID;
	
	@FXML
    private TextField LNameID;
	
	@FXML
    private TextField AgeID;
	
	@FXML
    private TextField SexID;
	
	@FXML
    private TextField BlockID;
	
	@FXML
	private TextField PhoneID;
	
	@FXML
    void onShow(ActionEvent event) throws ClassNotFoundException 
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Joseph","Ankita123$");
			
			String sql = "select first_name,last_name,age,sex,student_phone_no,block_no from (select RegNo,first_name,last_name, to_char(sysdate,'YYYY') - extract(year from DOB) as age, sex, student_phone_no, block_no from student natural left outer join student_contact_details) where RegNo = " + RegID.getText();
			
			ResultSet rs = con.createStatement().executeQuery(sql);
			
			if(rs.next())
			{
				FNameID.setText(rs.getString("first_name"));
				LNameID.setText(rs.getString("last_name"));
				AgeID.setText(rs.getString("age"));
				SexID.setText(rs.getString("sex"));
				BlockID.setText(rs.getString("block_no"));
				PhoneID.setText(rs.getString("student_phone_no"));
			}
			
			con.close();
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
    }
}
