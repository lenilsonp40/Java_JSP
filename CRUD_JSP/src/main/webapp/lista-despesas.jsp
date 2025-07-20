<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>CRUD_JSP_Lenilson</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>Descrição</th>
            <th>Data</th>
            <th>Valor</th>
            <th>Categoria</th>
        </tr>

        <c:forEach var="despesa" items="${despesas}">
            <tr>
                <td>${despesa.descricao}</td>
                <td>${despesa.data}</td>
                <td>${despesa.valor}</td>
                <td>${despesa.categoria}</td>
                <td>
                    <a href="controladora?acao=RemoveDespesa&?id=${despesa.id}">
                        Remover
                    </a>
                </td>
            </tr>
        </c:forEach>


    </table>

</body>
</html>