package dao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import dao.PersonDAOImpl;
import model.Person;
import model.userlocation;
import model.orderdetails;
//import model.Productdisplay;
 
@Service
public class PersonServiceImpl 
{
     @Autowired
     PersonDAOImpl personService;
	Person pl;
  
  /*  public void setPersonDAO(PersonDAO personDAO) {
        this.personDAO = personDAO;
    }*/
 
    
    @Transactional
    public void addPerson(Person p) {
    	personService.addPerson(p);
    }
 
    
    @Transactional
    public void updatePerson(Person p) 
    {
    	personService.updatePerson(p);
        //this.updatePerson(p);
    }
 
    
    @Transactional
    public List<Person> listPersons()
    {
        return personService.listPersons(); 
    }
 
    
   // @Transactional
  /*  public Person getPersonById(int id)
    {
     
        		
    }*/
    @Transactional
    public void removePerson(int id) {
        personService.removePerson(id);
    }
 
    @Transactional 
public List searchAll() 
	
	{
		
		//return dao.searchAll();
	
	return personService.searchAll();
	}
    
    //for display of  selected product
    @Transactional
    public Person search(int productid) 
	{
		// TODO Auto-generated method stub
		return personService.search(productid);
	}
    
    
    @Transactional
    public void adduser( userlocation p) {
    	personService.adduser(p);
    }
    
    
    @Transactional
    public List<userlocation> listuser()
    {
        return personService.listuser(); 
    }
    
    
  //for cart
	
  	 public void addcart(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
  	 {
  	    	//personService.addPerson(p);
  		//dao.addcart(request,response);
  		 
  		personService.addcart(request, response);
  		
  		 
  	 }
  	
  	//----------------------------
  	 
  	 
  	 
  	 
  	  	
  	//for order latest
  	
  	 @Transactional
     public void orderadd(orderdetails p) 
  	 {
  		 System.out.println("in service");
     	personService.orderadd(p);
     	 System.out.println("in service1");
     }
  	 
  	 
 	//for order latest second
   	
  	 @Transactional
     public List addordersecond(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
  	 {
  		 System.out.println("in service");
    
     	 System.out.println("in service1");
     	 return personService.addordersecond(request, response);
     	 
     }
 
  	
}