package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nlp.SentimentAnalyzer.SentimentAnalyzer;
import com.nlp.model.SentimentResult;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

public class SentimentController 
{
	private ObservableList<FeedBack>data;
	
	@FXML
    private TableColumn<FeedBack, String> tblLname;

    @FXML
    private Button btnLoad;

    @FXML
    private TableColumn<FeedBack, String> tblFname;

    @FXML
    private TableColumn<FeedBack, String> tblFeed;
    
    @FXML
    private TableColumn<FeedBack, String> tblType;

    @FXML
    private TableView<FeedBack> tblDetails;
    
    @FXML
    void onShow(ActionEvent event) throws ClassNotFoundException 
    {
    	data = FXCollections.observableArrayList();
    	tblFname.setCellValueFactory(new PropertyValueFactory<>("fname"));
    	tblLname.setCellValueFactory(new PropertyValueFactory<>("lname"));
    	tblFeed.setCellValueFactory(new PropertyValueFactory<>("feed"));
    	tblType.setCellValueFactory(new PropertyValueFactory<>("type"));
    	
    	try
    	{
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		
    		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Joseph","Ankita123$");
    		
    		String sql = "select S.first_name,S.last_name,F.suggestion from student S, FeedBack F where S.RegNo = F.RegNo";
    		
    		ResultSet rs = con.createStatement().executeQuery(sql);
    		
    		SentimentAnalyzer sentimentAnalyzer = new SentimentAnalyzer();
    		sentimentAnalyzer.initialize();
    		
    		while(rs.next())
    		{
    			SentimentResult sentimentResult = sentimentAnalyzer.getSentimentResult(rs.getString("Suggestion"));
    			String feedtype = sentimentResult.getSentimentType();
    			
    			data.add(new FeedBack(rs.getString("First_Name"),rs.getString("Last_Name"),rs.getString("Suggestion"),feedtype));
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

