package StudentQueries.FoodPref;

public class Details 
{
	private String fName;
	private String lName;
	private String allergy;
	
	public Details(String fName,String lName,String allergy)
	{
		this.fName = fName;
		this.lName = lName;
		this.allergy = allergy;
	}
	
	public String getFName()
	{
		return fName;
	}
	
	public String getLName()
	{
		return lName;
	}
	
	public String getAllergy()
	{
		return allergy;
	}
}
