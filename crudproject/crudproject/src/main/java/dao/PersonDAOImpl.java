package dao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
import model.Person;

import model.userlocation;
import model.orderdetails;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
 


@Repository
public class PersonDAOImpl 
 {
     
    private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);

    //@Resource(name="sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;
     
    
    public void setSessionFactory(SessionFactory sf)
    {
        this.sessionFactory = sf;
    }
 
    
   
    
    public void addPerson(Person p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("Person saved successfully, Person Details="+p);
    }
 
    
    public void updatePerson(Person p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
        logger.info("Person updated successfully, Person Details="+p);
    }
 
    @SuppressWarnings("unchecked")
    public List<Person> listPersons() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Person> personsList = session.createQuery("from Person").list();
        /*for(Person p : personsList){
            logger.info("Person List::"+p);
        }*/
        return personsList;
    }
 
    
  //for display the data
  	public List<Person> searchAll() 
  	{
  		List<Person> productList=new ArrayList();
  		Session session= sessionFactory.getCurrentSession();
  		logger.info("Person saved successfully, Product Details");		
  		productList=session.createQuery(" from Person").list();
  		for(Person p : productList)
  		{
              logger.info("Product List::"+p);
          }
  		return productList;
  				
  	}
    
    

 
    
    public void removePerson(int id) 
    {
        Session session = this.sessionFactory.getCurrentSession();
        Person p = (Person) session.load(Person.class, new Integer(id));
        if(null != p){
            session.delete(p);
        }
        logger.info("Person deleted successfully, person details="+p);
    }
    
    
    //for product display information after selecting the product
    
    public Person search(int productid) 
    {
		
		return (Person) sessionFactory.getCurrentSession().get(Person.class, productid);
	}

    
    //for new user creation
    
    public void adduser(userlocation u) 
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(u);
        logger.info("user saved successfully, user Details="+u);
    }
    
    
    
    //for display of user
    
    @SuppressWarnings("unchecked")
    public List<userlocation> listuser() {
        Session session = this.sessionFactory.getCurrentSession();
        List<userlocation> userList = session.createQuery("from userlocation").list();
        /*for(Person p : personsList){
            logger.info("Person List::"+p);
        }*/
        return userList;
    }
 
    
    
	//for cart storage
 	
    public void addcart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
{
        response.setContentType("text/html;charset=UTF-8");
      
      
           String[] itemids=request.getParameterValues("itemId");

            
            String [] pns=request.getParameterValues("txtpn");
            
            String [] cat=request.getParameterValues("txtcat");
            

            int ctr=0;
            
            String [] prc=request.getParameterValues("txtprice");
            int total=0;
            int a[]=new int[prc.length];
            for(String p:prc)
            {
            	a[ctr]=Integer.parseInt(p);
            	 ctr++;

            }
           
          

          ArrayList<Person> pList=new ArrayList<Person>();
            for(int i=0;i<itemids.length;i++)
                
            {
                
                    Person p1=new Person(Integer.parseInt(itemids[i]),pns[i],cat[i],a[i]);
                    pList.add(p1);
            }
            Iterator data=pList.iterator();
            
            
                
           HttpSession ses=request.getSession();
            ses.setAttribute("orderItems", pList);
            
            

       
        }
    
   
    
    
    
    
    
    
    
    
    
 //for new order creation
    
    public void addorder(orderdetails o) 
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(o);
        logger.info("user saved successfully, user Details="+o);
    }
    
    //for order latest
    
    
    public void orderadd(orderdetails p) {
    	System.out.println("in dao");
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("order details saved successfully, ordert Details="+p);
        System.out.println("in dao1");
    }
    
    
 //for order latest second
    
    
    public void orderaddsecond(orderdetails p) {
    	System.out.println("in dao");
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("order details saved successfully, ordert Details="+p);
        System.out.println("in dao1");
    }
    
    
    
    
    //for order second latest
    
    
    
    
    public List addordersecond(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
{
        response.setContentType("text/html;charset=UTF-8");
      
      
        //   String[] itemids=request.getParameterValues("itemId");
        
            
         //   String [] pns=request.getParameterValues("txtpn");
            
           // String [] cat=request.getParameterValues("txtcat");
            
        String itemids=request.getParameter("itemid");
        int itemid=Integer.parseInt("itemis");
        String pname=request.getParameter("txtpn");
        
        String category=request.getParameter("txtcat");
        

            int ctr=0;
            
           // String [] prc=request.getParameterValues("txtprice");
            //int total=0;
            //int a[]=new int[prc.length];
            //for(String p:prc)
            //{
            	//a[ctr]=Integer.parseInt(p);
            	 //ctr++;

            //}
           
          String prices=request.getParameter("txtprice");
          int price=Integer.parseInt("prices");

          ArrayList<Person> pList=new ArrayList<Person>();
          //  for(int i=0;i<itemids.length;i++)
                
          //  {
                
             // Person p1=new Person(Integer.parseInt(itemids[i]),pns[i],cat[i],a[i]);
          
          Person p1=new Person(itemid,pname,category,price);
               //     pList.add(p1);
         //   }
         //   Iterator data=pList.iterator();
            
            
                
           HttpSession ses=request.getSession();
            ses.setAttribute("orderItems", pList);
            return pList;
            

       
        }
    

    
    
 }
 
