package com.DB;
import java.sql.Connection;

import java.sql.DriverManager;
 public class DBConnect {
  static Connection conn;
  public static Connection getConn() {
   try {

    System.out.println("Connecting to the database...");
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","AAAaa@1234");
    System.out.println("Connected!");
    System.out.println(conn);

   } catch (Exception e) {
    e.printStackTrace();
   }
   return conn;
  }



 }




