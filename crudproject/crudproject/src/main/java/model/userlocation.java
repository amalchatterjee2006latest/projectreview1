package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;


@Entity
@Table(name="userlocation")


public class userlocation
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	//@NotNull(message = "Please enter your username")
	@NotNull
    @Size(min=1,max=20)
	private String username;
	
	//@NotNull(message = "Please enter your useraddress")
	@NotNull
    @Size(min=1,max=20)
	private String useraddress;
	
	@NotNull @Email(message = "Please enter your email addresss")
	
	private String email;
	
	//@NotNull(message = "Please enter your phonenumber")
	@NotNull
    @Size(min=1,max=20)
	private String phoneno;
	

	public userlocation()
	{
	
	}
	
	public userlocation(String username)
	{
		
		username=this.username;
		
	}
	
	
	public int getId() 
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username) 
	{
		this.username = username;
	}
	public String getUseraddress()
	{
		return useraddress;
	}
	public void setUseraddress(String useraddress) 
	{
		this.useraddress = useraddress;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getPhoneno()
	{
		return phoneno;
	}
	public void setPhoneno(String phoneno) 
	{
		this.phoneno = phoneno;
	}
	
	
	
	
	
}
