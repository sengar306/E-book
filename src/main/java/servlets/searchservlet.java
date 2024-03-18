package servlets;

import com.entity.User;
import com.entity.newbook;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/searchservlet")
public class searchservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        Configuration config=new Configuration().configure("hibernate.cfg.xml");
        //create Session Factory
        SessionFactory factory= config.buildSessionFactory();
        // create a session object
        String id =  req.getParameter("search");
        System.out.println("JSBHWBNHXUHE");
        Session s1=factory.openSession();
        newbook u1= s1.load(newbook.class,id);


        s1.close();
        factory.close();

    }
}
