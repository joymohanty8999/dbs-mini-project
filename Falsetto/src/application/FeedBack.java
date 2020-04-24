package application;

public class FeedBack
{
	private String fname;
	private String lname;
	private String feed;
	private String type;
	
	public FeedBack(String nval,String lval,String fval,String tval)
	{
		fname = nval;
		lname = lval;
		feed = fval;
		type = tval;
	}
	
	public String getFname()
	{
		return fname;
	}
	
	public String getLname()
	{
		return lname;
	}
	
	public String getFeed()
	{
		return feed;
	}
	
	public String getType()
	{
		return type;
	}
	
}