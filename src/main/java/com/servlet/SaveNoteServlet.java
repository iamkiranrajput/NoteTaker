package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;

import helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
//    public SaveNoteServlet() {
//        super();
//
//    }
//    
    
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//titlle content , fetch
			
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note =new Note(title, content, new Date());	
//			System.out.println(note.getId());
//			System.out.println(note.getContent());
			
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(note);
			
			tx.commit();
			s.close();
			
//			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			
//			out.print("<script>alert('not submited');</script>");

			out.print("<script><h1>Note added successfully</h1>");
			

			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
