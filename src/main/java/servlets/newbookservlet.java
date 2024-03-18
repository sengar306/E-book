package servlets;

import com.entity.newbook;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddBookServlet")
public class newbookservlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String bookname=request.getParameter("bookName");
          String  author=request.getParameter("author");
           int price= Integer.parseInt(request.getParameter("bookPrice"));
          String image=request.getParameter("imageUrl");
          String bookdes=request.getParameter("bookDescription");
        Configuration config=new Configuration().configure("hibernate.cfg.xml");
        //create Session Factory
        SessionFactory factory= config.buildSessionFactory();
        // create a session object
        Session s1=factory.openSession();
        System.out.println(s1);
        Transaction t1=s1.beginTransaction();
        newbook b1=new newbook();
        b1.setBookname(bookname);
        b1.setBook_price(price);
        b1.setBookImage(image);
        b1.setAuthor(author);
        b1.setBook_description(bookdes);
        s1.save(b1);
        t1.commit();
        s1.close();
        factory.close();




    }



}
