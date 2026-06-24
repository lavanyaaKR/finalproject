package adminproject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public signup() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("Signup servlet reached");
        System.out.println(name);
        System.out.println(email);
        System.out.println(password);
        try {

            Connection con = DBConnection.getConnection();

            String sql =
                    "INSERT INTO account(name,email,password) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int result = ps.executeUpdate();

            if(result > 0) {

                HttpSession session = request.getSession();

                session.setAttribute("name", name);
                session.setAttribute("email", email);

                response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
            } else {

                response.getWriter().println(
                        "Account creation failed");
            }

        } catch(Exception e) {

            e.printStackTrace();

        }
	}

}
