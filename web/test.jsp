
<%@page import="br.com.fatec.quiz.DataUser"%>
<%@page import="br.com.fatec.quiz.Quiz"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatec.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste</title>
    </head>
    <body >  <div class="container">
        
                <h3 style="color: #563d7c">Boa sorte, <%= request.getParameter("usuario") %></h3><br>

        <h3>Qual a capital dos seguintes países: 
        <form action="home.jsp">
            <%
            ArrayList<Question> teste = Quiz.getTest();
            for(int i = 0; i < teste.size(); i++){  
            Question q = teste.get(i); 
            %>
            <h5> <%= i+1%>- <%= q.getQuestion() %></h5>

            <%for(int i2=0; i2<q.getAlternatives().length; i2++){%>
            <input type="radio" name="<%= q.getQuestion() %>"
                   value="<%= q.getAlternatives()[i2] %>"/>
            <%= q.getAlternatives()[i2] %>
                <%}%>
            <%}%>
            <hr/>
            <input type="submit" name="enviar" value="enviar" />
            <input type='hidden'  name='idsessao' value='<%= session.getId() %>' >
            <input type='hidden'  name='usuario' value='<%=request.getParameter("usuario")%>' >
        </form> </h3>
       </div> 
        
    </body>
</html>
