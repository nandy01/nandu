package com.niit.jewellcartbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellcartbackend.dao.CategoryDAO;
import com.niit.jewellcartbackend.dao.CategoryDAOImpl;
import com.niit.jewellcartbackend.dao.ProductDAO;
import com.niit.jewellcartbackend.dao.ProductDAOImpl;
import com.niit.jewellcartbackend.dao.SupplierDAO;
import com.niit.jewellcartbackend.dao.SupplierDAOImpl;
import com.niit.jewellcartbackend.dao.UserDetailsDAO;
import com.niit.jewellcartbackend.dao.UserDetailsDAOImpl;
import com.niit.jewellcartbackend.model.Category;
import com.niit.jewellcartbackend.model.Product;
import com.niit.jewellcartbackend.model.Supplier;
import com.niit.jewellcartbackend.model.UserDetails;

@Configuration
@ComponentScan("com.niit.jewellcartbackend.model")
@EnableTransactionManagement
@EnableWebSecurity
public class ApplicationContextConfig {
	
	@Bean(name="datasource")
	public DataSource getDataSource(){
		
		
		BasicDataSource datasource=new BasicDataSource();
		datasource.setDriverClassName("org.h2.Driver");
    	datasource.setUrl("jdbc:h2:tcp://localhost/~/test");
    	datasource.setUsername("sa");
    	datasource.setPassword("sa");
    	return datasource;
    	}
	private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.hbm2ddl.auto", "update");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	return properties;
	}
    	@Autowired
    	@Bean(name = "sessionFactory")
        public SessionFactory getSessionFactory(DataSource dataSource) {
    		System.out.println("hi");
        	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
        	sessionBuilder.addProperties(getHibernateProperties());
        	sessionBuilder.addAnnotatedClasses(Category.class);
        	sessionBuilder.addAnnotatedClasses(Supplier.class);
        	sessionBuilder.addAnnotatedClasses(Product.class);
        	sessionBuilder.addAnnotatedClasses(UserDetails.class);
        	System.out.println("go");
        	return sessionBuilder.buildSessionFactory();
    	
    }
	@Autowired
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		System.out.println("wel");
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
	
	
	@Autowired
    	@Bean(name = "CategoryDao")
        public CategoryDAO getCategorydao(SessionFactory sessionFactory) {
		System.out.println("welcome");
        	return new CategoryDAOImpl(sessionFactory);
	
	

}
	@Autowired
	@Bean(name = "supplierDao")
    public SupplierDAO getSupplierdao(SessionFactory sessionFactory) {
		return new SupplierDAOImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "productDao")
    public ProductDAO getProductdao(SessionFactory sessionFactory) {
		return new ProductDAOImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "userDao")
    public UserDetailsDAO getUserdao(SessionFactory sessionFactory) {
		return new UserDetailsDAOImpl(sessionFactory);
	}
}

