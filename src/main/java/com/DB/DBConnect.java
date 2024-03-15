package com.DB;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.sql.Connection;

import java.sql.DriverManager;
 public class DBConnect {
  static Session session;
  public static Session getConn() {
   try {

    System.out.println("Connecting to the database...");
    // create object for configuration
    Configuration config=new Configuration().configure("hibernate.cfg.xml");
    System.out.println(config);
    //create Session Factory
    SessionFactory factory=config.buildSessionFactory();
    System.out.println(factory);
    // create a session object
    Session session=factory.openSession();
    System.out.println(session);
    /*-------- Entity Creation----------------------------*/
    // Transaction


   } catch (Exception e) {
    e.printStackTrace();
   }


   return  session; }



 }




