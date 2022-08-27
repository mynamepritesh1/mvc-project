package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class productDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

//for create 
	@Transactional
	public void createproduct(Product product) {
//this is for save or update if there is id already present then it can be update else save
		this.hibernateTemplate.saveOrUpdate(product);

	}

	// get all product
	public List<Product> getProducts() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;

	}
	//delete the single product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
		
		
	}
	//get the single product
	
	public Product getProduct(int pid) {
		
		return this.hibernateTemplate.get(Product.class, pid);
		
	}
}
