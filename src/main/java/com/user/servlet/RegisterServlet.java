package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.entity.User;
import com.DAO.*;
import com.DB.DBConnect;
@WebServlet("/register")


public  class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phoneNo = req.getParameter("phoneNo");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

			System.out.println(name + " " + email + " " + phoneNo + " " + password + " " + check);
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhoneNo(phoneNo);
			us.setPassword(password);
			System.out.println(DBConnect.getConn());
			if (check!= null)
			{
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());

				boolean f = dao.userRegister(us);

				if (f) {
					System.out.println("User Register Success...");

				} else {
					System.out.println("Something wrong with  server...");
				}
			}else{
				System.out.println("please check agree terms and condition");
			}

			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
