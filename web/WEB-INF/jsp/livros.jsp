<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <table>
            <tr>
                <th>Nome</th>
                <th>Autor(a)</th>
                <th>Descrição</th>
                <th>Categoria</th>
                <th>Preço</th>
                <th>Comprar</th>
            </tr>
            <c:forEach var="livro" items="${livros}">
            <tr>
                <td><c:out value="${livro.getNome()}"></c:out></td>
                <td><c:out value="${livro.getAutor()}"></c:out></td>
                <td><c:out value="${livro.getDescricao()}"></c:out></td>
                <td><c:out value="${livro.getCategoria()}"></c:out></td>
                <td><c:out value="${livro.getValor()}"></c:out></td>
                <td><c:out value="${livro.getLink()}"></c:out></td>
            </tr>
            </c:forEach>
        </table>
        
        
    </body>
</html>