<%--
    Document   : produtos
    Created on : 21/08/2019, 17:26:44
    Author     : gutol
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>

        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="produtos" />
        </jsp:include>

        <div class="container">
            <h1>Produtos da Minha Loja!</h1>

            <%
                boolean logado = false;

                if(session != null &&
                        session.getAttribute("logado") != null){
                    logado = (boolean)session.getAttribute("logado");
                }

                if(logado){
            %>

            <form action="AddProduto" method="post">
                Descrição: <input name="descricao">
                Info: <input name="info">
                Preço: <input name="preco">
                <input name="teste" value="3" type="hidden">
                <button type="submit">OK</button>
            </form>

            <% } %>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Descrição</th>
                        <th>Info</th>
                        <th>Valor</th>
                    </tr>
                </thead>
                <tbody>
            <%
                for(int i=0; i<Produto.lista.size(); i++){

                    Produto p = Produto.lista.get(i);
                    out.println("<tr>");
                    out.println("<td> "+ (i+1) +" </td>");
                    out.println("<td> <a href=\"produto.jsp?id="+i+"\">"+ p.getDescricao() +"</a> </td>");
                     out.println("<td> <a href=\"produto.jsp?id="+i+"\">"+ p.getInfo() +"</a> </td>");
                    out.println("<td> "+ p.getPreco() +" </td>");
                    out.println("</tr>");
                }

            %>
                </tbody>
            </table>

        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
