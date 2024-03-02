<%@page import="com.entities.Note"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="all_css.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="container">
	<%@ include file="navbar.jsp" %>
		<h1>Edit your note</h1>
	
	<% int noteId= Integer.parseInt(request.getParameter("note_id").trim());
	
	Session s=FactoryProvider.getFactory().openSession();
	
	Note note=(Note)s.get(Note.class, noteId);
	
	%>
	
	<form action="UpdateServlet" method="POST">
	
	<input value="<%= note.getId() %>" name="noteId" type="hidden" />
	
  <div class="form-group">
    <label for="note title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" value="<%= note.getTitle() %>" required>
  </div>
  <div class="form-group">
    <label for="note content">Note Content</label>

	<textarea id="content" name="content" placeholder="enter your content here" class="form-control" style="height: 300px"><%=note.getContent() %></textarea>
  </div>
 
 <input type="submit" class="btn btn-success text-center" value="Save Note" /> 
</form>	
	
	
	
	</div>

</body>
</html>