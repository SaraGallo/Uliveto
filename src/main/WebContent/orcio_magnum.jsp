<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import = "cn.uliveto.dao.ProductDao" %>
<%@page import = "cn.uliveto.connection.DbCon" %>
<%@page import ="cn.uliveto.model.*" %>
<%@page import = "java.util.*" %>

<%Utente auth = (Utente)request.getSession().getAttribute("auth"); 
    
  	
  	if(auth!=null)
  	{
  		request.setAttribute("auth",auth);
  		
  		if(auth.getId() == 2)
  	  	{
  	  		response.sendRedirect("/uliveto/admin-pages/admin_index.jsp");
  	  	}
  	}
  
  	ProductDao pd = new ProductDao(DbCon.getConnection());
  	List<Prodotto> products = pd.getAllProducts();
  	
  	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
  	
  	if(cart_list!=null)
  	{	
  		request.setAttribute("cart_list",cart_list);
  	}
  	
  	
  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file = "includes/header.jsp" %>
</head>
<body>
<%@include file = "includes/navbar_nuova.jsp" %>
	<section class="banner banner2 clearfix">
        <div class="banner_image banner_image4"></div>
        <div class="banner_copy">
            <div class="banner_copy_txt">
                
                <h4>Orcio Magnum</h4>
                <p>Presentiamo il nostro prestigioso Orcio Magnum di Olio Extravergine di Oliva, 
                    una scelta esclusiva per gli intenditori e gli amanti della buona tavola. 
                    Questo magnifico orcio in ceramica, sapientemente realizzato a mano, 
                    contiene il nostro pregiato olio extravergine, ottenuto da olive selezionate 
                    con cura e spremute a freddo per preservare tutti i preziosi nutrienti e l'aroma intenso.

                </p>
            </div>
        </div>
    </section>
    
 
 
</body>
</html>