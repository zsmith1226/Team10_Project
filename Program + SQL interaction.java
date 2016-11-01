/**
 *
 * @author Michael Adams
 *
 * Revised - Master networking class.
 *	Has a wide variety of public methods for use in accessing network
 *	functions, and a few private methods for implementing functionality.
 * Revised 10/30/16
 * 	Added comments regarding functionality and reasons for choosing certain means. "//Functional" was my checkmark for tested and working.
 *  Includes descriptions of encrypting entire objects, not just data, though data is encrypted by nigh-identical means.
 
 The below is no longer valid - methods that are redundant have been deleted without substitution as they're unneeded for example purposes.
 
 Index of methods:
  
public int Validate(String u, String p);

public void saveEmployee(Employee emp);

public void saveCurrentClient(CurrentClient cur);

public void saveArchiveClient(ArchiveClient cur);

public void saveScreenedClient(ScreenedClient cur)

public CurrentClient retrieveOneCurrentClient(String firstname, int cln)

public ArchiveClient retrieveOneArchiveClient(String firstname, int clientid)

public ScreenedClient retrieveOneScreenedClient(String firstname, String lastname)

public ArrayList<ScreenedClient> retrieveAllScreenedClient()

public ArrayList<CurrentClient> retrieveAllCurrentClient()

public ArrayList<ArchiveClient> retrieveAllArchiveClient()

public ArrayList<Employee> retrieveAllEmployee()

private SealedObject encryptCurrentClient(CurrentClient obj)

private SealedObject encryptArchiveClient(ArchiveClient obj)

private SealedObject encryptEmployee(Employee obj)
 
private SealedObject encryptScreenedClient(ScreenedClient obj)

private Object decryptObject(SealedObject obj)

private static Connection getConnection() throws Exception
	
END INDEX
 */
import java.io.*;
import java.math.BigInteger;
import java.security.*;
import java.security.spec.*;
import javax.crypto.*;
import javax.crypto.spec.DESKeySpec;
import java.sql.*;
import java.util.*;

/*
References
http://examples.javacodegeeks.com/core-java/crypto/encrypt-decrypt-object-with-des/

http://zetcode.com/db/mysqljava/

http://www.java2s.com/Code/Java/Database-SQL-JDBC/HowtoserializedeserializeaJavaobjecttotheMySQLdatabase.htm

http://www.tutorialspoint.com/java/java_serialization.htm

http://www.flexiprovider.de/examples/ExampleRSA.html
	
*/

public class NetworkAccess {
  
 	 static final String WRITE_OBJECT_SQL = "INSERT INTO java_objects(name, object_value) VALUES (?, ?)";
 	 static final String READ_OBJECT_SQL = "SELECT object_value FROM java_objects WHERE id = ?";
	public NetworkAccess()
    {}    
    
    /*
    Takes the username and password, and does voodoo to validate it.
    The current voodoo is complete and functional.
	 
	 Function is completely tested and working, provided valid inputs.
	 */
  	public int Validate(String u, String p)
    {
	 	u = u.toLowerCase();
	 	//Initial operations - making username neat, adding salt, hashing password
		//It's being hashed a randomized but hilarious number of times to counter rainbow tables
		//Ideally this should be blanked upon finish to prevent finding it afterwards in dereferenced memory.
		//Also ideally it should be different based upon each account - this was a prototype and I couldn't be bothered to figure out an algorithm
		//for that from scratch. However, the basic functionality was there to be integrated - it would have been a method return instead of a
		//string constant.
	 	p = p + "lhsjie,.o4th_+q3#$5jfg9-sev7y43%#fucky^%our#$rai64$#%nbowtabl%#$e-fd98uvb9oh43oqh5nt4jneg@!$(&*rvfb7-9+_8y954jwo5#$@tng;eg9jr345";
		int retVal = 0;
		MessageDigest md;
		try
		{
			md = MessageDigest.getInstance("SHA-512");
		}
		catch (NoSuchAlgorithmException e)
		{
			return -2;
		}
		//Hashing the password
		int stupidNumber = 3177;
		byte[] midpoint;
		//Prepares the hash function for use
		md.update(p.getBytes());
		while(stupidNumber-- != 0)
		{
			//Hashing loop - digest performs the hash, reset prepares it for another round, update populates the hash function
			midpoint = md.digest();
			md.reset();
			md.update(midpoint);
		}
		midpoint = md.digest();
		//Bringing the hash back to string format from bytes.
		p = new BigInteger(midpoint).toString(36);
		
		//Now we're getting to the more interesting bit - connecting to and querying the database
				Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
		conn = getConnection();
		}
		catch (SQLException e)
		{
			return -2;
		}
		catch (Exception e)
		{
			return -2;
		}
		try
		{
		//Querying the database for username, password, account type
		
		pst = conn.prepareStatement("SELECT username, password, accounttype FROM useraccount");
		rs = pst.executeQuery();

		boolean search = true;
		//Looks through returned rows for matching username
		while(search && rs.next())
		{
			if(u.equals(rs.getString("username").toLowerCase()))
			{
				search = false;
			}
		
		}
		//If the search was unsuccessful, the username was incorrect
		if(search)
		{
			conn.close();
			pst.close();
			rs.close();
			return -1;
		}
		
		//Checking the password
		if(p.equals(rs.getString("password")))
		{
			retVal = rs.getInt("accounttype");
			conn.close();
			pst.close();
			rs.close();
			return retVal;
		}
		//Incorrect password. Ideally it should have a different return value, but that was unsupported on the other side.
		else
		{
			conn.close();
			pst.close();
			rs.close();
			return -1;
		}
		}
		catch (Exception e)
		{
			return -2;
		}
		//And we're either with invalid credentials, have our account, or sent back the message that something really off the wall has happened
    }
	 
	 public void deleteEmployee(Employee cur)
	{
		//Connecting
		Connection nacct = null;
		
		try{
		nacct = getConnection();
		}
		catch (Exception e)
		{
			System.out.println("Failed to connect.");
			return;
		}
		try
		{
		//Prepared statements are the way to avoid SQL injection attacks, as the database will process the incoming data as data
		//Which is to say that it knows that given string "Doom de doom " de doom" that the string isn't complete until the datastream stops
		//Obviously, pre-preparing all possible statements is a lot of work, and the feature is relatively recent
		//The '?' character is where the '1' below is substituted, as can be seen from the next method, multiple '?'s can be used easily.
		PreparedStatement rtv = nacct.prepareStatement("DELETE FROM useraccount where username = ?");
		rtv.setString(1, cur.getUsername());
		rtv.executeUpdate();
		//Closing down the connection
		nacct.close();
		rtv.close();
		rs.close();
		}
		catch (Exception e)
		{
			return;
		}
	}
	//This is largely the same as the one above, but with multiple substitutes.
	public void deleteScreenedClient(ScreenedClient cur)
	{
		Connection nacct = null;
		
		try{
		nacct = getConnection();
		}
		catch (Exception e)
		{
			System.out.println("Failed to connect.");
			return;
		}
		try
		{
			//Another example of using prepared statements. This time with multiple substitutions.
			//The first index is '1', did you notice? Hooray for code.
		ResultSet rs = null;
		PreparedStatement rtv = nacct.prepareStatement("DELETE FROM screenedclient where firstname = ? and lastname = ?");
		rtv.setString(1, cur.getFirstName());
		rtv.setString(2, cur.getLastName());
		rtv.executeUpdate();
		
		nacct.close();
		rtv.close();
		rs.close();
		}
		catch (Exception e)
		{
			return;
		}
	}

	//Utilizes modifed Employee class to save an employee
	//Functional
	public void saveEmployee(Employee emp)
	{
		Connection nacct = null;
		
		try{
		nacct = getConnection();
		}
		catch (Exception e)
		{
			return;
		}
		try
		{
		//Checks if there is already a present account.
		ResultSet rs = null;
		PreparedStatement rtv = nacct.prepareStatement("SELECT useraccount FROM useraccount where username = ?");
		rtv.setString(1, emp.getUsername());
		rs = rtv.executeQuery();
		boolean accountExists = false;
		if(rs.next())
		{
			accountExists = true;
		}
		//If there is a present account, then execute the update to the data.
		if(accountExists)
		{
			rtv = nacct.prepareStatement("UPDATE useraccount SET useraccount = ?, password = ? WHERE username = ?");
			rtv.setObject(1, encryptEmployee(emp));
			rtv.setString(2, emp.getPassword());
			rtv.setString(3, emp.getUsername());
			
			rtv.executeUpdate();
		}
		//Otherwise, create an entirely new account.
		else
		{
			//This is an example of a bunch of possible values being inserted, utilizing the prepared statement method.
			//Note that the first index is '1', not '0'. Marvel at the overwhelming consistency of code.
			rtv = nacct.prepareStatement("INSERT INTO useraccount(username, password, accounttype, useraccount) VALUES(?, ?, ?, ?)");
			rtv.setString(1, emp.getUsername());
			rtv.setString(2, emp.getPassword());
			rtv.setInt(3, emp.getEmpType());
			rtv.setObject(4, encryptEmployee(emp));
			rtv.executeUpdate();
		}
		//Closing the connection.
		nacct.close();
		rtv.close();
		rs.close();
		}
		catch (Exception e)
		{
			return;
		}
	}

	//This is the same as the above, albeit with a different object type.
	//Functional
	public void saveCurrentClient(CurrentClient cur)
	{
		Connection nacct = null;
		//Database connection
		try{
		nacct = getConnection();
		}
		catch (Exception e)
		{
			System.out.println("Failed to connect.");
			return;
		}
		try
		{
		//Preparing database statements
		ResultSet rs = null;
		//SQL injection defense, convenient means of using variables
		PreparedStatement rtv = nacct.prepareStatement("SELECT currentclient, firstname FROM currentclient where clientid = ?");
		rtv.setInt(1, cur.getClientLogNumber());
		rs = rtv.executeQuery();
		
		boolean accountExists = false;
		//Checking values
		while(rs.next())
		{
			if(cur.getFirstName().equals(rs.getString("firstname")))
			{
				accountExists = true;
			}
		}
		if(accountExists)
		{
			rtv = nacct.prepareStatement("UPDATE currentclient SET currentclient = ? WHERE clientid = ? and firstname = ?");
			rtv.setObject(1, encryptCurrentClient(cur));
			rtv.setInt(2, cur.getClientLogNumber());
			rtv.setString(3, cur.getFirstName());
			rtv.executeUpdate();
		}
		else
		{
			rtv = nacct.prepareStatement("INSERT INTO currentclient(firstname, lastname, clientid, currentclient) VALUES(?, ?, ?, ?)");
			rtv.setString(1, cur.getFirstName());
			rtv.setString(2, cur.getLastName());
			rtv.setInt(3, cur.getClientLogNumber());
			rtv.setObject(4, encryptCurrentClient(cur));
			rtv.executeUpdate();
		}
		nacct.close();
		rtv.close();
		rs.close();
		}
		catch (Exception e)
		{
			return;
		}

	//Functional
	public CurrentClient retrieveOneCurrentClient(String firstname, int cln)
	{
		Connection nacct = null;
		
		try{
		nacct = getConnection();
		}
		catch (Exception e)
		{
			return null;
		}
		try
		{
			//Grabbing relevant currentclient objects
			PreparedStatement rtv = nacct.prepareStatement("SELECT currentclient, firstname FROM currentclient where clientid = ?");
			rtv.setInt(1, cln);
			ResultSet rs = rtv.executeQuery();
			boolean cont = true;
			SealedObject obj = null;
			//Preparing a buffer for input
			//You cannot just cast an Object downloaded from SQL (or anywhere) to a SealedObject, much to my lamentation and annoyance
			byte[] buf = null;
		//The thing we're using to download the input
    		ObjectInputStream objectIn = null;
		//Object exists, downloading
			if(rs.next())
			{
				buf = rs.getBytes(1);
	    		if (buf != null)
		
	      	objectIn = new ObjectInputStream(new ByteArrayInputStream(buf));
		 //Object created, casting and storing
	    		obj = (SealedObject) objectIn.readObject();
			}
			else
			{
				//Nothing found, null result
				nacct.close();
				rtv.close();
				rs.close();
				return null;
			}
			//Decryption, creating return value, closing connections
			CurrentClient retVal = (CurrentClient) decryptObject(obj);
			nacct.close();
			rtv.close();
			rs.close();
			return retVal;
		}
		catch (SQLException e)
		{
			
			return null;
		}
		catch(IOException x)
			{
				return null;
			}
		catch(ClassNotFoundException x)
		{
			return null;
		}
	}
	
	//Functional
	//Much easier than just retrieving one
	public ArrayList<ScreenedClient> retrieveAllScreenedClient()
	{
		Connection nacct = null;
		ArrayList<ScreenedClient> retVal = new ArrayList<ScreenedClient>();
		try{
		nacct = getConnection();
		}
		catch (Exception e)
		{
			return null;
		}
		try
		{
			//Gets the required data
			PreparedStatement rtv = nacct.prepareStatement("SELECT screenedclient FROM screenedclient");
			ResultSet rs = rtv.executeQuery();
			//The holder for the object being decrypted
			SealedObject obj = null;
			
			byte[] buf = null;
			
    		ObjectInputStream objectIn = null;
			while(rs.next())
			{
			//Gets and confirms that there is an object to retrieve
			buf = rs.getBytes(1);
    		if (buf != null)
				//Reads in an object, casts the object appropriately for temp storage, adds the decrypted object to the retrieval array
				objectIn = new ObjectInputStream(new ByteArrayInputStream(buf));
				obj = (SealedObject) objectIn.readObject();
				retVal.add((ScreenedClient) (decryptObject(obj)));
			}
			
			nacct.close();
			rtv.close();
			rs.close();
			
			return retVal;
		}
		catch (SQLException e)
		{
			
			return null;
		}
		catch(IOException x)
			{
				return null;
			}
		catch(ClassNotFoundException x)
		{
			return null;
		}
	}
	
	 //Functional	 
	 //Modifying to encrypt other objects is simple - replace the return value and load-in value
	 //All objects must have "implements Serializable" at their top, must import java.io.Serializable
	 //No further modifications of the archived object should be necessary.
	 
	 //Would like to make one generic method for this, not possible due to encryption limitations
	 /*
	 10/30/2016 - disregard the above, I can see how to do it  easily. I'd have to implement further checks up the line
	 but this is otherwise quite possible as I implemented a fully generic decrypter method. The things I see when I'm not really tired. 
	 Oi.
	 */
	 private SealedObject encryptCurrentClient(CurrentClient obj)
	 {
		//Usual good practices would have been to store the key in an encrypted format, deencrypting it at need and then zeroing the memory
	 	String enckey = new String("{Key previously redacted - generating AES keys isn't hard}");

		SealedObject sealed;
		try {
			DESKeySpec dks = new AESKeySpec(enckey.getBytes());
			//Creating the enciphering object
			SecretKeyFactory skf = SecretKeyFactory.getInstance("AES");
			SecretKey desKey = skf.generateSecret(dks);
			Cipher ecipher = Cipher.getInstance("AES");
			
			// initialize the ciphers with the key
			
			ecipher.init(Cipher.ENCRYPT_MODE, desKey);
				 	 
			// create a sealed object
			
			sealed = new SealedObject(obj, ecipher);
				      }
	      catch (NoSuchAlgorithmException e) {
	          return null;
	      }
	      catch (InvalidKeyException e) {
	          return null;

	      }
			catch (InvalidKeySpecException e){
				return null;
			}
			catch (IOException e)
			{
				return null;
			}
			catch (NoSuchPaddingException e)
			{
				return null;
			}
			catch (IllegalBlockSizeException e)
			{
				return null;
			}
			return sealed;
	 }
	 	 
	 //Functional 100% - no further decryption methods required
	 //To deal with output, simply cast the return value in the calling method as the object you know it is
	 private Object decryptObject(SealedObject obj)
	 {
	 Object o;
    String deckey = new String("{Key previously redacted - generating AES keys isn't hard}");
	 	 try {
	 		DESKeySpec dks = new AESKeySpec(deckey.getBytes());
			//Creating the enciphering object
			SecretKeyFactory skf = SecretKeyFactory.getInstance("AES");
			SecretKey desKey = skf.generateSecret(dks);
			
			// initialize the ciphers with the key
			
	 	//Same deal as encryption
		Cipher dcipher = Cipher.getInstance("AES");
		dcipher.init(Cipher.DECRYPT_MODE, aesKey);
		
		o = (Object) obj.getObject(dcipher);
		}
			catch (NoSuchAlgorithmException e) {
				System.out.println("Algorithm");
	          return null;
	      }
	   	catch (InvalidKeyException e) {
				System.out.println("Key.");
	          return null;

	      }
			catch (InvalidKeySpecException e){
				System.out.println("Key Spec.");
				return null;
			}	
			catch (NoSuchPaddingException e)
			{
			System.out.println("Padding.");
				return null;
			}
			catch (IOException e)
			{
			System.out.println("IO.");
				return null;
			}
			catch (ClassNotFoundException e)
			{
			System.out.println("Class not found.");
				return null;
			}
			catch (IllegalBlockSizeException e)
			{
			System.out.println("Block size.");
				return null;
			}
			catch (BadPaddingException e)
			{
			System.out.println("Padding.");
				return null;
			}
	 	return o;
	 }
	 
	 //Creates database connection
	 //functional
	 private static Connection getConnection() throws Exception
	 {
		//Required for java DB connection
		Class.forName("com.mysql.jdbc.Driver").newInstance();

		//Rest should be pretty self explanatory
		//Obviously the credentials no longer work in any respect, but the example is useful.
		String url = "jdbc:mysql://athena.ecs.csus.edu:3306/wsritrdb"; 
		String username = "wsritrdb";
		String password = "{REDACTED BY ORDER OF THE INQUISITION}";
		Connection conn = DriverManager.getConnection(url, username, password);
		conn.prepareStatement("use wsritrdb").executeQuery();
		return conn;
	 }
}
