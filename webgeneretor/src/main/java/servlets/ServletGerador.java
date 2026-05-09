package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/gerar-hash")
public class ServletGerador extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public ServletGerador() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String senha = request.getParameter("senha");

		if (senha == null || senha.isEmpty()) {
			request.setAttribute("msg", "Digite uma senha!");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}

		String hash = BCrypt.hashpw(senha, BCrypt.gensalt(10));

		request.setAttribute("hash", hash);

		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
