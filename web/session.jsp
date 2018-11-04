<%@page import="br.com.fatec.quiz.Quiz"%>
<%@page import="br.com.fatec.quiz.User"%>
<%@page import="br.com.fatec.quiz.DataUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - web Quiz</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
    </head>
    <body><center>
    
        <h2>Bem-Vindo</h2>
                    <a href="home.jsp"><button type='submit' class="btn btn-danger">Desistir</button></a>

        <form method='post' action="test.jsp">
            <br><br><br><br>
            <table>
                <tr>
                    <td>Usuário: <input type="text" name="usuario"  required><br></td>
                    <td><input type='hidden'  name='idsessao' value='<%= session.getId() %>' ></td>
                    <td><button type='submit' class="btn btn-success">Iniciar teste</button></td>
                </tr>
            </table> 
                    <br><br><br>

        </form><br><br><br><br>
        

    </center></body>

</html>
