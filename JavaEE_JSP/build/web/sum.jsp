
<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 21:50:32
    Author     : Nickolas Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
double n1 = 0,n2 = 0,result = 0;
String erro = null;

if (request.getParameter("n1") == null || request.getParameter("n2") == null ){
     erro = "Não foram informados  os 2 parametros.";
} 
else{

try{
 n1 = Double.parseDouble(request.getParameter("n1"));
}
catch(Exception e){

erro = "O parametro informado como n1 '(" +request.getParameter("n1")+ ")' não é um número valido";

}

try{

 n2 = Double.parseDouble(request.getParameter("n2"));



}
catch(Exception e){

erro = "O parametro  informado como n2'(" +request.getParameter("n2")+ ")' não é um número valido";

}


try{
result = n1+n2;
}
catch(Exception e){
erro = "erro de calculo"+ e.getMessage();
}
}

%>

}

<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JAVA EE</h1>
        <h2>Java Server Pages</h2>
        <h3>Soma</h3>
        <hr/>
        
        <h4><a href="index.html">Voltar</a></h4>
        <% if(erro != null) {%>
        <div style="color: red"><%= erro %></div>
        <% } else { %>
        <div><%= n1 %>+<%= n2 %>=<%= result %></div> 
        <% }  %>
            
            
            
   </body>
            
            
            
            
            
</html>
