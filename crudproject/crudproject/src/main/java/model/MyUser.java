package model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class MyUser
{
	@NotNull
    @Size(min=1,max=20)
    private String name;

    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	//@Min(0)
  //  @Max(120)
   // private int age;
	
	@NotNull
    @Size(min=1,max=20)
	private String password;
	
	
	
	
	
	//for email
	 @Size(min=1,max=20)
	private String email;
	
	
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	
    
    public MyUser(String name, String pwd,String email) 
    {
            this.name = name;
            this.password = pwd;
            this.email=email;
        }

        public MyUser()
     {
            name ="";
            password="";
            email="";
        }

	

}
