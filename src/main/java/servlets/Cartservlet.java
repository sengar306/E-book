package servlets;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import com.entity.cartitem; // Your CartItem entity class

import com.entity.cartitem;

public class Cartservlet {

    @WebServlet("/cart")
    public class CartServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;
        private SessionFactory sessionFactory;

        public CartServlet() {
            super();
        }

        @Override
        public void init() throws ServletException {
            super.init();
            Configuration config=new Configuration().configure("hibernate.cfg.xml");
            //create Session Factory
            SessionFactory factory= config.buildSessionFactory();
            // create a session object
            Session s1=factory.openSession();
            System.out.println(s1);
            Transaction t1=s1.beginTransaction();
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            Session session = sessionFactory.openSession();
            Transaction transaction = null;

            try {
                transaction = session.beginTransaction();
                Query<cartitem> query = session.createQuery("from Cartitem", cartitem.class);
                List<cartitem> cartItems = query.list();
                transaction.commit();
                request.setAttribute("cartItems", cartItems);
                request.getRequestDispatcher("cart.jsp").forward(request, response);
            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            } finally {
                session.close();
            }
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            // Handle POST requests such as adding items to the cart
        }
    }

}
