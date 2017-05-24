package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.MyUser;
import model.Person;
import model.userlocation;
import model.orderdetails;

import dao.PersonDAOImpl;
import dao.PersonServiceImpl;
 
@Controller
public class PersonController 
{
	
	HttpServletRequest request;
	HttpServletResponse response;
	
	
     @Autowired
     private PersonServiceImpl personService1;
    
    

    //GO TO ABOUT.JSP     
     @RequestMapping("/about")
     public String about() 
     {
     return "about";
     }
     
     //for user form
     
     @RequestMapping("/userform")
     public String userform() 
     {
     return "user";
     }
     
    // @RequestMapping("/confirm")
     @RequestMapping(value="/confirm", method = RequestMethod.GET)
     public String confirm() 
     {
     return "confirm";
     }
     
     //GO TO FEEDBACK.JSP
     
     @RequestMapping("/feedback")
     public String feedback() 
     {
       return "feedback";
     }
     
     
     //GO TO  CONTACT.JSP
     @RequestMapping("/contact")
     public String contact() 
     {
       return "contact";
     }
     
   //GO TO  terms.JSP
     @RequestMapping("/terms")
     public String terms() 
     {
       return "terms";
     }
     
     
     //GO TO NDEX.HTML
     
     @RequestMapping("/")
     public String indexpage() 
     {
       return "index";
     }
    
 //GO TO NDEX.HTML
     
     @RequestMapping("/home")
     public String indexpage1() 
     {
       return "index";
     }
  
 
  
     // GO TO LOGIN.JSP
   
    @RequestMapping("/login")
	 public String showHome1()
	 {
		return "login";
	 }
   
   //   GO TO ERROR.JSP
   @RequestMapping("/error")
	public String showHome3()
	{
		return "error";
	}
   
	//for sale confirmation
   
   @RequestMapping(value="/sale", method = RequestMethod.GET)
  	public String sale()
  	{
  		return "sale";
  	}
   
   
   //go to log out
   
   @RequestMapping("/quit")
   public String quit() 
   {
   return "quit";
   }
   
   
    // GO TO  ADMIN  PAGE FOR  CRUD
    @RequestMapping(value = "/persons", method = RequestMethod.GET)
    public String listPersons(Model model) {
        model.addAttribute("person", new Person());
        model.addAttribute("listPersons", this.personService1.listPersons());
        return "person";
    }
     
    //For add and update   PRODUCTS
    @RequestMapping(value= "/person/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("person") Person p)
    {
         
        if(p.getId() == 0)
        {
            //new PRODUCT, add it
            this.personService1.addPerson(p);
        }
        else
        {
            //for existing product call update
            this.personService1.updatePerson(p);
        }
         
        return "redirect:/persons";
         
     }
     
    // FOR DELETING PRODUCTS  FROM ADMIN LOGIN
    
     @RequestMapping("/remove/{id}")
      public String removePerson(@PathVariable("id") int id)
     {
         
        this.personService1.removePerson(id);
        return "redirect:/persons";
     }
  
      @RequestMapping("/edit/{id}")
      public String editPerson(@PathVariable("id") int id, Model model)
      {
        model.addAttribute("person", this.personService1.search(id));
        model.addAttribute("listPersons", this.personService1.searchAll());
        return "person";
      }
    

    
    


    //for display of products for   normal user
	
  	@RequestMapping(value = "/ProductDetails", method = RequestMethod.GET)
       public String listProductforUser(Model model)
   	{
           model.addAttribute("product", new Person());
           model.addAttribute("listProduct", this.personService1.searchAll());
           return "ProductDetails";
       }

   	// end of display of products for   normal user
   	
   	
   	
	
   	
  //for user addition   
    @RequestMapping(value= "/userdetail/add", method = RequestMethod.GET)
    public String adduser(@ModelAttribute("user")  @Valid userlocation p,BindingResult result,Map model)
    {
         
        
    	if(result.hasErrors())
        {
    	
    		
    		return "userdetailsvalidation";
        }
        else
        {
        
            this.personService1.adduser(p);
            
        }
         
      
       return "redirect:/confirm";
        
      
         
     }
  
    @RequestMapping(value = "/ProductDetailsdummy", method = RequestMethod.GET)
    public String listProductforUserdummy(Model model)
	{
        model.addAttribute("product", new Person());
        model.addAttribute("listProduct", this.personService1.searchAll());
      
        return "productdisplaylatestresponsive";
    }
   	
    
  //for cart storage
  	@RequestMapping(value= "/cart", method = RequestMethod.POST)
     public String addcart(@ModelAttribute("cart") Person p, HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException
      
      {
  		  this.personService1.addcart(request , response);
  		  
  		
  		    //return "cart";
  		 //  return "ordercart";
   return "testordercart";
  		  
  		//return "testordersecond";
      }
  	//---------------------------------------------------------------------
  	
  	
 
  	
  	
  	
  	
    
    //for order latest
    
    @RequestMapping(value= "/orderdetails", method = RequestMethod.POST)
    public String orderadd(@ModelAttribute("orderdetails") orderdetails p)
    {
         
       System.out.println("in controller");
            this.personService1.orderadd(p);
            System.out.println("in controller1");     
            
          //  return "confirm";
        //  return "userdetailsvalidation";
            
           return "md";
    }
    
    
 //for order latest second
    
    @RequestMapping(value= "/orderdetailssecond", method = RequestMethod.POST)
    public String orderaddsecond(@ModelAttribute("orderdetailssecond") orderdetails p)
    {
         
       System.out.println("in controller");
            this.personService1.orderadd(p);
            System.out.println("in controller1");     
            
          //  return "confirm";
        //  return "userdetailsvalidation";
            
           return "md";
    }
    
    
    
    @RequestMapping("/md")
    public String md() 
    {
    return "md";
    }
    

    
    @RequestMapping(value= "/agree", method = RequestMethod.POST)
    public String agree(@ModelAttribute("ordersecond") Person p,Model model) throws ServletException, IOException
    {
      model.addAttribute("ordersecond", this.personService1.addordersecond(request, response));
    		
        return "testordersecond";
    }
  

    
    
    
    
    
    
}