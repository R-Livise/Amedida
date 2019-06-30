<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">
            <%
               String mensaje =(String)request.getAttribute("men");
            %>
            
            <%=mensaje %>
        </h1><br>
        <h2 align="center">
            <a href="form_prueba.jsp">Regresar a principal</a>
        </h2>
    </body>
</html>
