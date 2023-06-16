<@page language="java" contentType="text/html; charset=UFT-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Jogos</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1>Jogos</h1>
        <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Título</th>
                <th>ISBN</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${jogos}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.isbn}</td>
           
            <td>
            <a href="/jogo/uptade?id=${item.id}" class="btn btn-warning">Editar"></a>
            <a href="/jogo/delete?id=${item.id}" class="btn btn-warning">Excluir"></a>
                
                </td>
            </tr>
            </c:forEach>
        </table>    
    </div>
</body>
</html>