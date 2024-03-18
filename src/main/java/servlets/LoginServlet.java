package servlets;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;


import com.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {

    public boolean islogin=false;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println(email);
        System.out.println(password);
        try {
            if ("admin@gmail.com".equals(email) && "admin".equals(password))
            {
                System.out.println("succesfully");
                response.sendRedirect(request.getContextPath() + "/admin.jsp");
            }

    else {

                Configuration config = new Configuration().configure("hibernate.cfg.xml");
                //create Session Factory
                SessionFactory factory = config.buildSessionFactory();
                // create a session object
                Session session = factory.openSession();

                Query<User> query = session.createQuery("FROM User WHERE email = :email AND password = :password", User.class);
                // userPassword is the password input by the user
                query.setParameter("email", email);
                query.setParameter("password", password);
                // Execute query and get result
                User user = query.uniqueResult();
                System.out.println(user);

                if (user!=null) {

                    System.out.println("succesfully");
                    request.getSession().setAttribute("user", user);
                    System.out.println(user.getName());

                    response.sendRedirect(request.getContextPath() + "?login=true&username=" + URLEncoder.encode(user.getName(), "UTF-8"));


                } else {
                    // Invalid credentials
                  System.out.println("notsuccefuly");
                }

            }
            } catch(Exception e)

    {
        e.printStackTrace();
        // Handle exception
        request.setAttribute("error", "An error occurred");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    }
}
