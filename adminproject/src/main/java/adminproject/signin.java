package adminproject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public signin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {

            Connection con = DBConnection.getConnection();

            if(con == null) {
                response.getWriter().println("Database Connection Failed");
                return;
            }

            String sql =
                "SELECT * FROM account WHERE email=? AND password=?";

            PreparedStatement ps =
                con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                request.getSession().setAttribute(
                        "name",
                        rs.getString("name"));

                request.getSession().setAttribute(
                        "email",
                        rs.getString("email"));

                response.sendRedirect("dashboard.jsp");

            } else {

                response.sendRedirect("index.html?error=notfound");

            }

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}