package configuration;

import java.util.Properties;


import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;

import entity.Address;

@Configuration
@ComponentScan("controllers")
public class HibernateInit {
	
	
@Bean(name = {"datasource"})
public DriverManagerDataSource datasource()
{
	System.out.println("In hibernate Init");
	DriverManagerDataSource dm = new DriverManagerDataSource();
	dm.setDriverClassName("com.mysql.jdbc.Driver");
	dm.setUrl("jdbc:mysql://localhost:3306/springDB");
	dm.setUsername("root");
	dm.setPassword("kgopu");
	return dm;
}

@Bean(name = {"sessionfactory"})
public LocalSessionFactoryBean sessionFactory(DriverManagerDataSource dm)
{
	System.out.println("In hibernate Init");
	System.out.println(dm.getUrl());
	LocalSessionFactoryBean bean = new LocalSessionFactoryBean();
	bean.setDataSource(dm);
	
	Properties pr = new Properties();
	pr.setProperty("hibernate.dialect","org.hibernate.dialect.MySQLDialect");
	pr.setProperty("hibernate.show_sql","true");
	pr.setProperty("show_sql","true");
	pr.setProperty("hbm2ddl.auto","create");
	bean.setHibernateProperties(pr);
	System.out.println("here");
	//Address a  = new Address();
	///System.out.println(a.getClass().getPackage().getName());
    bean.setPackagesToScan(new String[] { "entity" });
	
	return bean;
}


@Bean(name = {"transactionmanager"})
HibernateTransactionManager transactionmanager(SessionFactory sf)
{
	System.out.println("In hibernate Init");
	HibernateTransactionManager htm = new HibernateTransactionManager();
	htm.setSessionFactory(sf);

	return htm;
}

@Bean
public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
	System.out.println("In hibernate Init");
   return new PersistenceExceptionTranslationPostProcessor();
}



}