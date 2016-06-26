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
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellcartbackend.dao.CategoryDAO;
import com.niit.jewellcartbackend.dao.CategoryDAOImpl;
import com.niit.jewellcartbackend.model.Category;

@Configuration
@ComponentScan("com.niit.jewellcartbackend.model")
@EnableTransactionManagement
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
        	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
        	sessionBuilder.addProperties(getHibernateProperties());
        	sessionBuilder.addAnnotatedClasses(Category.class);
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
}


