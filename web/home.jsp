
<%@page import="br.com.fatec.quiz.DataUser"%>
<%@page import="br.com.fatec.quiz.Question"%>
<%@page import="br.com.fatec.quiz.Quiz"%>
<%@page import="org.apache.tomcat.jni.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
 //inicializa as variáveis   
   boolean enviar = false;
   double grade = 0.0;
 String idsessao="";
 
 //se o botão 'Enviar' da página quiz.jsp for acionado...
 if(request.getParameter("enviar")!=null){
   enviar = true;
   int count = 0;
   for ( int i=0; i< Quiz.getTest().size(); i++){
   Question q = Quiz.getTest().get(i);
   String userAnswer = request.getParameter(q.getQuestion());
   if(q.getAnswer().equals(userAnswer)) count++;
   }
   grade = 100.0 * ((double)(count) / (double)(Quiz.getTest().size()));

}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body><center><br>
        <div>
            <a href="session.jsp"> <button class="btn btn-danger"> Entrar</button></a>  
            </div><br><br>
        
 <!-- se o botão 'Enviar' da página quiz.jsp foi acionado...  -->        
        <%if(enviar){%>
        
        <h3><%= request.getParameter("usuario")%>, sua média de acertos foi de <%=grade%>%</h3>
        <hr/>
        <%}%>
        <br>
        
        
        
        <br>
        
          
    </body>
</html>
