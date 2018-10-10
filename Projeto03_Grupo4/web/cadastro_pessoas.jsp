<%-- 
    Document   : cadastro_pessoas
    Created on : 09/10/2018, 21:33:50
    Author     : MARIA
--%>

<%@page import="br.com.fatecpg.Bd_pessoas"%>
<%@page import="br.com.fatecpg.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Pessoas</title>
    </head>
    <body>
        <a href="home.jsp">Home</a>&nbsp&nbsp
        <a href="cadastro_empresas.jsp">Cadastro de Empresas</a>&nbsp&nbsp
        <a href="cadastro_veiculos.jsp">Cadastro de Veiculos</a>
        
        <h1>Cadastro de Pessoas</h1>
        <%if (request.getParameter("novoCadastro")!=null){
            String nome = request.getParameter("nome");
            String cpf=  request.getParameter("cpf");
            String email= request.getParameter("email");
            String telefone= request.getParameter("telefone");
            Cadastro c = new Cadastro();
            
            c.setDado(nome, cpf, email, telefone);
            Bd_pessoas.getCadastros().add(c);
            response.sendRedirect("home.jsp");
        }%>
        <form>
            Nome:<br/><input type="text" name="nome"/><br/><br/>
            CPF:<br/><input type="text" name="cpf"/><br/><br/>
            E-mail:<br/><input type="text" name="email"/><br/><br/>
            Telefone:<br/><input type="text" name="telefone"/><br/><br/>
            <input type="submit" name="novoCadastro" value="Enviar">
        </form>
    </body>
</html>

