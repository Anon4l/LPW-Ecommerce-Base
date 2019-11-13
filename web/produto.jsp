<%--
    Document   : produto.jsp
    Created on : 30/10/2019, 17:30:56
    Author     : gutol
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <style>



        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes de Produto</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="produtos" />
        </jsp:include>
        <jsp:useBean id="Produtos" class="modelos.Produto" />
        <div class="container">

             <%
              int id =  Integer.parseInt(request.getParameter("id"));
              Produto p = Produto.lista.get(id);
              String nome = p.getDescricao();
              String descricao = p.getInfo();

            %>


            <h1 align="center"><%=nome%></h1>



            <form action="AddCarrinho" method="post">
                <label>Quantidade</label><input name="quantidade" >
                <input name="id" value="<%=id%>" type="hidden">

                <button type="submit">OK</button>
            </form>

        </div>

    </body>
</html>
