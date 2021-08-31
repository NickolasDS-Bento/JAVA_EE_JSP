
<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 21:50:32
    Author     : Nickolas Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
int n = 5;
String erro = null;
if (request.getParameter("n") == null){
     erro = "Não foram informados o parametro corretamente.";
} else{
try{

 n = Integer.parseInt(request.getParameter("n"));
 
}
catch(Exception e){

erro = "O parametro informado como n '(" +request.getParameter("n")+ ")' não é um número valido";

}
}
%>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JAVA EE</h1>
        <h2>Java Server Pages</h2>
        <h3>Numeros Aleatorios</h3>
        <hr/>
        
        <h4><a href="index.html">Voltar</a></h4>
        <% if(erro != null) {%>
        <div style="color: red"><%= erro %></div>
        <% } else { %>
        <div>
            
            <table border="1">
                <tr>
                    <th>Índice</th>
                    <th>Numeros</th>
                </tr>
                <% for(int i=1; i<=n; i++){%>
                <tr>
                    <th><%= i %></th>
                    <th><%= ((int)(Math.random()*100)) %></th>
                </tr>
                <% } %>
                
                
                
                
            </table>
            
            
            
            
        </div> 
        <% }  %>
        <hr>
        </br>
         <form action="random-list.jsp">
             <input type="number" name="n" value="<%= n %>"/>+
        
        <input type="submit" value="Gerar"/>
        </form>   
            
            
   </body>
            
            
            
            
            
</html>
