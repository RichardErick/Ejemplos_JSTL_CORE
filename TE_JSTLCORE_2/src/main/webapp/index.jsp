<%@ page import="com.jtsl.te_jstlcore_2.Persona" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           if(session.getAttribute("listaper")==null){
            ArrayList<Persona> lista= new ArrayList<Persona>();
            //Agregamos lista a la colección
            lista.add(new Persona(1,"Richard Erick","6532456","richarderij@gmail.es"));
            lista.add(new Persona(2,"German Garmendia ","6434567","german@yahoo.com"));
            lista.add(new Persona(3,"Luis Avila Vega ","6578654","avila@gmail.com"));
            //colocamos la lista como un atributo de session
            session.setAttribute("listaper", lista);
            } 
         %>  
         <h1>Ejemplos de JSTL CORE</h1>
         <ul>
             <li><a href="jstl_if.jsp">Ejemplo de if</a></li>
             <li><a href="jstl_choose.jsp">Probando el choose</a></li>
             <li><a href="jstl_foreach.jsp">Recorriendo la coleccion con ForEach</a></li>
             
         </ul>
    </body>
</html>
