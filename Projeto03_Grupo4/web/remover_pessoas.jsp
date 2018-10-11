<%-- 
    Document   : remover_pessoas
    Created on : 09/10/2018, 23:46:55
    Author     : MARIA
--%>


<%@page import="br.com.fatecpg.Bd_pessoas"%>
<%@page import="br.com.fatecpg.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Pessoa</title>
        <a href="home.jsp">Home</a>
        <a href="cadastro_pessoas.jsp">Cadastro de Pessoas</a>
        <a href="cadastro_empresas.jsp">Cadastro de Empresas</a>
        <a href="cadastro_veiculos.jsp">Cadastro de Veiculos</a>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastro c = Bd_pessoas.getCadastros().get(i);%>
    <body>
        <h1>Remover</h1>
         <%if (request.getParameter("removerCadastro")!=null){
           
            
            Bd_pessoas.getCadastros().remove(i);
            response.sendRedirect("cadastro_pessoas.jsp");
        }%>
        <form>
            Indece: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            
            Nome:<%= c.getNome()%><br/><br/>
            CPF:<%= c.getCpf()%><br/><br/>
            E-mail:<%= c.getEmail()%><br/><br/>
            Telefone:<%= c.getTelefone()%><br/><br/>
            
        
            <br/><input type="submit" name="removerCadastro" value="remover">
        </form>
    </body>
</html>