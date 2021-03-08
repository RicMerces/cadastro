<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
		//RECEBE O OBJETO LISTA
		// coloca o msm nome que foi setado no controller, da lista que vai receber
		ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");



%>
<!DOCTYPE html>
<html>
<head lang="pt-br">
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="icon" href="images/phone.png">
<link rel="stylesheet" href="style.css">
<h1>Agenda de contatos</h1>
<a href="novo.html" class="botao1">Novo contato</a>

<table id="tabela">


<thead>
<tr>

<th>Id</th>
<th>Nome</th>
<th>Telefone</th>
<th>E-mail</th>
<th>Opções</th>



</tr>

</thead>

<tbody>

<% for(int i = 0;i<lista.size();i++){ %>
<tr>
<td><%=lista.get(i).getIdcon()%></td>
<td><%=lista.get(i).getNome()%></td>
<td><%=lista.get(i).getFone()%></td>
<td><%=lista.get(i).getEmail()%></td>

<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="botao1">Editar</a></td>



</tr>
<%} %>

</tbody>

</table>

<script src = "scripts/validadorRemover.js"></script>
</body>
</html>