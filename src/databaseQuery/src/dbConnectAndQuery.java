import java.sql.*;

public class dbConnectAndQuery {
	
	public static void main(String[] args) throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
		//connecting with database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/paper_review", "root", "xiaowei.lin123");
		
		//first query
			Statement stmt=con.createStatement();  
		
			ResultSet rs=stmt.executeQuery("select Paper.paperId,Paper.title,Paper.abstract,Author.emailAddr from Author Author,Paper Paper where Author.emailAddr = Paper.contactEmailAddr ");  
			System.out.println("Paper Id Paper Title Paper Abstract Author email");
			while(rs.next())   
				System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t\t"+rs.getString(3)+"\t\t"+rs.getString(4));  

			System.out.println("\n\nSecond query");
		
		//second query
			stmt=con.createStatement();  
		
			rs=stmt.executeQuery("select c.reviewId,c.paperId,c.techMeritScore,c.readabilityScore,c.originalityScore,c.relevanceScore,c.reviewerEmailAddr,c.recommendation,c.authorFeedback,c.commiteeFeedback from Review c");  
			while(rs.next())   
				System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t\t"+rs.getString(3)+"\t\t"+rs.getString(4)+"\t\t"+rs.getString(5)+"\t\t"+rs.getString(6)+"\t\t"+rs.getString(7)+"\t\t"+rs.getString(8)+"\t\t"+rs.getString(9)+"\t\t"+rs.getString(10));  
		
			System.out.println("\n\nThird query");
		
		//third query
			stmt=con.createStatement();  
		
		
		rs=stmt.executeQuery("select count(*) from paper");  
		while(rs.next())
			System.out.println("Count of paper submited is: "+rs.getInt(1)); 
		
		System.out.println("\n\nFourth query");
		
		//Fourth query
		
		String sql2 = "INSERT INTO Paper values(6, 'Title6', NULL, NULL, 'abc.def@gmail.com')";
		String sql1 = "INSERT INTO Author values('abc.def@gmail.com','abc','def')";
			
		try {
		stmt.executeUpdate(sql1);
		stmt.executeUpdate(sql2);
		System.out.println("Inserted data successfully");
		}catch(Exception e) {
			System.out.println("Unable to insert,error with message: "+e);
		}
		
		System.out.println("\n\nFifth query");
		
		//fifth query
		String sql3 = "DELETE FROM Author LIMIT 1;";
		Statement stmt1 = con.prepareStatement(sql3);
		try {
			stmt1.executeUpdate(sql3);;
		}catch(Exception e){
			System.out.println("Not able to delete, error with message "+e);
		}
		
		con.close();  
		

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}	