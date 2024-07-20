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
                
                <h4>Il Nostro Olio</h4>
                <p>Assapora la purezza e la qualità del nostro Olio Extravergine di Oliva, prodotto con amore e 
                    dedizione nella nostra azienda agricola. Estratto a freddo da olive selezionate a mano, 
                    il nostro olio conserva tutti i benefici nutrizionali e il gusto autentico delle migliori olive italiane. 
                    Perfetto per condire insalate, piatti di pasta, verdure grigliate e per esaltare il sapore di ogni pietanza, 
                    il nostro olio è una scelta ideale per chi cerca un prodotto genuino e di eccellenza. 
                    Scopri l'essenza della tradizione e del benessere con il nostro Olio Extravergine di Oliva.

                </p>
            </div>
        </div>
    </section>
    
 
 
</body>
</html>