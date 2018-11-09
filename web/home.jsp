
<%@page import="br.com.fatec.quiz.Question"%>
<%@page import="br.com.fatec.quiz.Quiz"%>
<%@page import="br.com.fatec.quiz.User"%>
<%@page import="br.com.fatec.quiz.DataUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
   //adiciona o usuário
   User u = new User();
   u.setNome(request.getParameter("usuario"));
   u.setMedia(Double.toString(grade));
   DataUser.getUsuarios().add(u); 
}
%>

<html>
    <head>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body><center><br>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br>
            
            
 <!-- se o botão 'Enviar' da página quiz.jsp foi acionado...  -->        
        <%if(enviar){%>
        
<div class="alert alert-info" role="alert" style="border-bottom-width: 5px;">    
    <image src="imagem/concluido.png"></image><br>Teste realizado com sucesso!
</div>
        <div class="alert alert-info" role="alert" style="border-bottom-width: 5px;">
    <h4><%= request.getParameter("usuario")%>, você acertou <%=grade%>% do total. </h4><br><small>Confira sua posição no Ranking.</small>
 
</div>
        <%}%>
        <br><br><br>
<!-- --------------------------------------------------------- --> 
<p>
  <a class="btn btn-dark" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Últimos 10 acessos</a>
  <button style="background-color: #563d7c; color: white" class="btn " type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Os 10 maiores pontuadores</button>
</p>
<div class="container" style="width: 800px">
  <div class="col" >
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body">
        <h5> Últimos 10 testes </h5>
        <table border="1" style="width: 600px">
    <tr style="background: #212529; color: #ffffff">
          <th>Acesso</th>
           <th>Usuário</th>
           <th>Pontos</th>
        </tr>
        <% 
            int linha = DataUser.getUsuarios().size();
            int z = 10;
            if( linha < 10){ 
                z=linha;
            }
            
            for (int i=z; i>0; i--){ %>
           <tr>
                <td><%= linha%></td>
                <td><%= DataUser.getUsuarios().get(linha-1).getNome() %></td>
                <td><%= DataUser.getUsuarios().get(linha-1).getMedia() %></td>
          </tr>
       <% linha=linha-1;} %>
</table>      </div>
    </div>
  </div>
</div>
<div class="container" style="width: 770px">
    <div class="collapse multi-collapse" id="multiCollapseExample2">
        <div class="card card-body">

   <!-- --------------------------------------------------------- --> 
   <h5> Ranking das 10 melhores notas</h5><br>
<table border="1" style="width: 600px">
    <tr style="background: #563d7c; color: #ffffff"><th>Posição</th>
            <th>Usuário</th>
            <th>Pontos</th></tr>

        <% 
            //inicializa as variáveis
            double auxmedia = 0;
            String auxnome;
            int tamanho = DataUser.getUsuarios().size();
            double[] mediauser = new double[tamanho];
            String[] nomeuser = new String[tamanho];
            // popula nomeuser[] e mediauser[]
            for (int i=0; i<tamanho; i++){
            nomeuser[i]= DataUser.getUsuarios().get(i).getNome() ;
            mediauser[i]=Double.parseDouble(DataUser.getUsuarios().get(i).getMedia());   
            }
            //limita o valor de 'count' em 10
            int count=tamanho;
            if (count>10){count=10;}
            
            // Buble Sort
            for (int i=0; i<count; i++){
                 for (int j=i+1; j< tamanho; j++){
                    if (mediauser[i] < mediauser[j]) {
                    auxmedia = mediauser[i];
                    auxnome=nomeuser[i];
                    mediauser[i] = mediauser[j];
                    nomeuser[i]= nomeuser[j];
                    mediauser[j] = auxmedia;
                    nomeuser[j]= auxnome;
                    } }
        %><tr>
           <th style="color: #563d7c"><%= (i+1)+".o"%></th>
          <td><%= nomeuser[i] %></td>
          <td><%= mediauser[i] %></td></tr>
        <%  }  %>
</table>     </div>
    </div>
  </div><br><br><br><br>
</body>
<%@include file="WEB-INF/jspf/footer.jspf" %>

</html>
