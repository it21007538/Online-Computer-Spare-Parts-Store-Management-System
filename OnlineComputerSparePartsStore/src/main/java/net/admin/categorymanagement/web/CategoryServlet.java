package net.admin.categorymanagement.web;

import java.io.IOException;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.admin.categorymanagement.dao.CategoryDAO;
import net.admin.categorymanagement.model.Category;


@WebServlet("/")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryDAO categoryDAO;
	
	public void init() {
    	categoryDAO = new CategoryDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();
        
        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertCategory(request, response);
                    break;
                case "/update":
                    updateCategory(request, response);
                    break;
                case "/delete":
                    deleteCategory(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;             
                default:
                    listCategory(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
       
    //********************************************Return List of Categories to view layer******************************************
   
    	private void listCategory(HttpServletRequest request, HttpServletResponse response) 
    		throws SQLException, ServletException, IOException {
    		
    		List < Category > listCategory = categoryDAO.selectAllCategories();
            request.setAttribute("listCategory", listCategory);
            RequestDispatcher dispatcher = request.getRequestDispatcher("category-list.jsp");
            dispatcher.forward(request, response);
    	    }
    	
     //***************************************************Display User Form********************************************************

    	    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	    	
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("category-form.jsp");
    	        dispatcher.forward(request, response);
    	    }
    	    
    //*****************************************************************************************************************************

    	    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, ServletException, IOException {
    	    	
    	        int id = Integer.parseInt(request.getParameter("id"));
    	        Category existingCategory = categoryDAO.selectCategory(id);
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("category-form.jsp");
    	        request.setAttribute("category", existingCategory);
    	        dispatcher.forward(request, response);

    	    }
    //***************************************************Handle Created Categories************************************************


    	    private void insertCategory(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	    	
    	        String name = request.getParameter("name");
    	        String description = request.getParameter("description");
    	        String quantity = request.getParameter("quantity");
    	        Category newCategory = new Category(name, description, quantity);
    	        categoryDAO.insertCategory(newCategory);
    	        response.sendRedirect("list");
    	    }
    	    
   //***************************************************Handle Created Categories************************************************

    	    private void updateCategory(HttpServletRequest request, HttpServletResponse response) 
    	    		throws SQLException, IOException{
    	    	
    	        int id = Integer.parseInt(request.getParameter("id"));
    	        String name = request.getParameter("name");
    	        String description = request.getParameter("description");
    	        String quantity = request.getParameter("quantity");
    	        
    	        Category book = new Category(id, name, description, quantity);
    	        categoryDAO.updateCategory(book);
    	        response.sendRedirect("list");
    	    }
   //***************************************************Delete Categories************************************************

    	    private void deleteCategory(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	    	
    	        int id = Integer.parseInt(request.getParameter("id"));
    	        categoryDAO.deleteCategory(id);
    	        response.sendRedirect("list");

    	    }
    	}
