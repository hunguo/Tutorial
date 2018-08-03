package org.study.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.study.dao.ApplyDao;
import org.study.model.Application;
import org.study.model.User;

@WebServlet("/apply")
public class ApplyController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {
		
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("user");
		
		/*if (user != null) {
			request.setAttribute("name", user.getName());
			request.getRequestDispatcher("/WEB-INF/views/applyForm.jsp").forward(request, response);
		} else {
			request.setAttribute("error", "먼저 로그인 하세요");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}*/
		
		request.getRequestDispatcher("/WEB-INF/views/applyForm.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {
		String PLAN = request.getParameter("PLAN");
		String PLANDESC = request.getParameter("PLANDESC");
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Application application = new Application(user.getId());
		
		//System.out.println(application);
		
		ApplyDao dao = new ApplyDao();
		if (dao.submitApplication(application)) {
			response.sendRedirect(request.getContextPath() + "/profile?msg=success");
		} else {
			request.setAttribute("error", "일정 작성에 실패하셨습니다");
			request.getRequestDispatcher("WEB-INF/views/applyForm.jsp").forward(request, response);
		}
	}
}
