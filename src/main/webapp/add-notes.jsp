<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css.jsp" %>

</head>
<body>
	
		<div class="container">
	

	<%@include file="navbar.jsp" %>
	<h2 class="mt-3">Write your Title and Content</h2>
	
	<form action="saveNoteServlet" method="post">
  <div class="form-group">
    <label for="note title">Note Title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" required>
  </div>
  <div class="form-group">
    <label for="note content">Note Content</label>

	<textarea id="content" placeholder="enter your content here" class="form-control" style="height: 300px" required></textarea>
  </div>
 
  <button type="submit" class="btn btn-primary text-center">Add Note</button>
</form>	

</body>
</html>