package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PERSON")
public class Person {
 
    @Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    
    public Person()
    {
    	
    }
     
    public Person( int id,String productname,String category,int price)
    {
    		this.id=id;
    		this.productname=productname;
    		this.category=category;
    		this.price=price;
    }
    
    
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	

	private String productname;
     
    private String category;
    
   // private String price;
    private int price;

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	
 
       // @Override
    /*public String toString()
        {
        return "id="+id+", "productname="+productname+"+", "price="+price,country="+country;
    }*/
}
