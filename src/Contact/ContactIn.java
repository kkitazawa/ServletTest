package Contact;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/contact/contactin"})
public class ContactIn extends HttpServlet{
	public void doPost(
		HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		PrintWriter out = response.getWriter();
		
		/*要らなかったのでリマインドとして保存
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String mail = request.getParameter("mail");
		String inquiry = request.getParameter("inquiry");
		*/
		
		String[] newsLetters = request.getParameterValues("newsLetter");
		for(String nLetter : newsLetters){
			out.println("<p>" + nLetter + "</p>");
		}
		
		
		String selectDcm = request.getParameter("documentRequest");
		
		if(selectDcm.equals("yes")) {
			request.getRequestDispatcher("../jsp/document.jsp")
			.forward(request, response);
		} else {
			request.getRequestDispatcher("../jsp/contactOut.jsp")
			.forward(request, response);
		}
	}
}
