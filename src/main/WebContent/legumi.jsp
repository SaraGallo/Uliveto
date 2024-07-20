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
                
                <h4>I Nostri Legumi</h4>
                <p>Scopri i nostri ceci pregiati, coltivati con cura nella nostra azienda agricola. 
                    I nostri ceci sono selezionati con attenzione per garantire un prodotto naturale, 
                    ricco di sapore e perfetto per una dieta sana ed equilibrata. Ideali per zuppe, 
                    insalate, hummus e numerose altre ricette, i nostri ceci offrono un’eccezionale 
                    fonte di proteine vegetali, fibre e vitamine. Scegli la qualità e la genuinità 
                    dei ceci della nostra azienda per arricchire i tuoi piatti con gusto e benessere.

                </p>
            </div>
        </div>
    </section>
    
 
 
</body>
</html>