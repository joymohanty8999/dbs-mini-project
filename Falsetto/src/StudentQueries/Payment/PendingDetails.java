package StudentQueries.Payment;

public class PendingDetails 
{
	private String regNo;
	private String fName;
	private String lName;
	private String StPhone;
	private String ParPhone;
	private String Paid;
	
	public PendingDetails(String regNo,String fName,String lName,String StPhone,String ParPhone,String Paid)
	{
		this.regNo = regNo;
		this.fName = fName;
		this.lName = lName;
		this.StPhone = StPhone;
		this.ParPhone = ParPhone;
		this.Paid = Paid;
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
	
	public String getStPhone()
	{
		return StPhone;
	}
	
	public String getParPhone()
	{
		return ParPhone;
	}
	
	public String getPaid()
	{
		return Paid;
	}
}
