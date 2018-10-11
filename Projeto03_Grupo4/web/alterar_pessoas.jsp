<%-- 
    Document   : alterar_pessoas
    Created on : 09/10/2018, 23:42:12
    Author     : MARIA
--%>


<%@page import="br.com.fatecpg.Bd_pessoas"%>
<%@page import="br.com.fatecpg.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <a href="home.jsp">Home</a>
    <a href="cadastro_pessoas.jsp">Cadastro de Pessoas</a>
    <a href="cadastro_empresas.jsp">Cadastro de Empresas</a>
    <a href="cadastro_veiculos.jsp">Cadastro de Veiculos</a>
    
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastro c = Bd_pessoas.getCadastros().get(i);%>
    
    <body>
        <h1>Alterar</h1>
         <%
        if (request.getParameter("alterarCadastro")!=null){
            c.setNome(request.getParameter("nome"));
            c.setCpf(request.getParameter("cpf"));
            c.setEmail(request.getParameter("email"));
            c.setTelefone(request.getParameter("telefone"));
            
            Bd_pessoas.getCadastros().set(i, c);
            response.sendRedirect("cadastro_pessoas.jsp");
        }%>
        <form>
            Indece: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%= i %>"/>
            
            Nome:<br/><input type="text" name="nome" value="<%= c.getNome()%>"/><br/><br/>
            CPF:<br/><input type="text" name="cpf" value="<%= c.getCpf()%>"/><br/><br/>
            E-mail:<br/><input type="text" name="email" value="<%= c.getEmail()%>"/><br/><br/>
            Telefone:<br/><input type="text" name="telefone" value="<%= c.getTelefone()%>"/><br/><br/>
            <input type="submit" name="alterarCadastro" value="Incluir">
        </form>
    </body>
</html>


