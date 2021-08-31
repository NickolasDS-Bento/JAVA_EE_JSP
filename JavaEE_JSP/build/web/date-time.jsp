 <%@page import="java.util.Date"%>
<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 21:50:32
    Author     : Nickolas Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JAVA EE</h1>
        <h2>Java Server Pages</h2>
        <h3>Data e Hora</h3>
        <hr/>
        <%Date now = new Date();%>
        
        <div><%= now  %></div>
        <h4><a href="index.html">Voltar</a></h4>
        
    </body>
</html>
