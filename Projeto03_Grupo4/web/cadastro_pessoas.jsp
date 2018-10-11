

<%@page import="br.com.fatecpg.Bd_pessoas"%>
<%@page import="br.com.fatecpg.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastrados</h1>
        <a href="novo_pessoas.jsp"><button>Registrar Pessoa</button></a>
        <hr/>
        
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>E-mail</th>
                <th>Telefone</th>
            </tr>
             
            <%for (Cadastro c: Bd_pessoas.getCadastros()){%>
            <tr>
                <td><%=c.getNome()%></td>
                <td><%=c.getCpf()%></td>
                <td><%=c.getEmail()%></td>
                <td><%=c.getTelefone()%></td>
                <% int i = Bd_pessoas.getCadastros().indexOf(c); %>
                <td>
                    <a href="alterar_pessoas.jsp?i=<%=i%>">
                    <button>Alterar</button>
                    <a/>
                    <a href="remover_pessoas.jsp?i=<%=i%>">
                    <button>Remover</button>
                    <a/>

                </td>
            </tr>
           <% }%>
        </table>
    </body>
</html>

