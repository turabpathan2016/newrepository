package com.info.utility;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.sun.org.apache.regexp.internal.recompile;

public class HibernateUtility {
	public static SessionFactory getSessionFactory()
	{
		Configuration configuration=new Configuration();
		configuration.configure("com/info/utility/hibernate.cfg.xml");
		SessionFactory factory=configuration.buildSessionFactory();factory.openSession();
		return factory;
	}

}
