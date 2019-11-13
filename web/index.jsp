<%--
    Document   : index
    Created on : 21/08/2019, 17:26:44
    Author     : gutol
--%>



<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">

    </head>
    <body>

        <jsp:include page="menu.jsp">
            <jsp:param name="item" value="ofertas" />
        </jsp:include>

        <jsp:useBean id="Produtos" class="modelos.Produto" />

        <div class="container">
            <h1>Ofertas da Loja!</h1>

            <div class="ofertas">
                <c:forEach var="p" items="${Produtos.lista}" varStatus="loop" >
                    <c:if test="${p.oferta}">
                        <div>
                            <h5> ${p.descricao} </h5>
                            <h5> ${p.info} </h5>
                            <p> R$ ${p.preco} </p>
                            <img src="${p.imagem}">
                            <form action="Carrinho" method="post">  <!-- Envia por post a variavel P com o nome add para Carrinho-->
                                <button name="add" value="${loop.index}" class="add-to-cart btn btn-primary">Adicionar a carrinho
                        </form>
                        </div>
                    </c:if>
                </c:forEach>
            </div>



        </div>
        <script src="js/bootstrap.min.js">
        </script>

    </body>
</html>
