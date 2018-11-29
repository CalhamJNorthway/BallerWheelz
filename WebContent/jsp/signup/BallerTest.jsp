<%
  String salaryString = request.getParameter("salary");
  int salary = Integer.parseInt(salaryString);
  session.removeAttribute("brokeBitchMessage");

  if(salary >= 500000) {
	    response.sendRedirect("Signup.jsp");
  } else {
        session.setAttribute("brokeBitchMessage","Sorry you don't make enough to be here...");
	    response.sendRedirect("FirstPass.jsp");
  }
%>