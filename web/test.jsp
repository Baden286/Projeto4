
<%@page import="br.com.fatec.quiz.DataUser"%>
<%@page import="br.com.fatec.quiz.Quiz"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatec.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste</title>
    </head>
    <body style="background-image: url('imagem/rio.jpg'); background-repeat: no-repeat">  <div class="container">
        
            <center> <h2 style="color: #6699ff">Boa sorte, <%= request.getParameter("usuario") %></h2><br>
                    <h3><b> Qual a capital dos seguintes estados:</b></h3></center>

        <h6> 
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
            
            <%}%><hr>
            <%}%>
            <hr/>
            <input type="submit" name="enviar" value="enviar" />
            
            <input type='hidden'  name='idsessao' value='<%= session.getId() %>' >
            <input type='hidden'  name='usuario' value='<%=request.getParameter("usuario")%>' >
        </form> </h6>
       </div> 
        
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
