package StudentQueries.Payment;

public class DueDetails 
{
	private String regNo;
	private String fName;
	private String lName;
	private String pending;
	
	public DueDetails(String regNo,String fName,String lName,String pending)
	{
		this.regNo = regNo;
		this.fName = fName;
		this.lName = lName;
		this.pending = pending;
	}
	
	public String getRegNo()
	{
		return regNo;
	}
	
	public String getFName()
	{
		return fName;
	}
	
	public String getLName()
	{
		return lName;
	}
	
	public String getPending()
	{
		return pending;
	}
}
