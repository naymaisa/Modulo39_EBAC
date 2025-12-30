<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.List" %>
        <%@ page import="com.ebac.webapp.UserServlet.User" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Gerenciar Usuários - EBAC</title>
                <link rel="stylesheet" href="css/style.css">
            </head>

            <body>
                <div class="container">
                    <header>
                        <h1>👥 Gerenciamento de Usuários</h1>
                        <a href="index.jsp" class="btn btn-back">← Voltar</a>
                    </header>

                    <div class="form-section">
                        <h2>Adicionar Novo Usuário</h2>
                        <form action="users" method="post">
                            <input type="hidden" name="action" value="add">
                            <div class="form-group">
                                <label for="name">Nome:</label>
                                <input type="text" id="name" name="name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" required>
                            </div>
                            <button type="submit" class="btn btn-success">➕ Adicionar Usuário</button>
                        </form>
                    </div>

                    <div class="table-section">
                        <h2>Lista de Usuários</h2>
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Email</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List<User> users = (List<User>) request.getAttribute("users");
                                        if (users != null && !users.isEmpty()) {
                                        for (User user : users) {
                                        %>
                                        <tr>
                                            <td>
                                                <%= user.getId() %>
                                            </td>
                                            <td>
                                                <%= user.getName() %>
                                            </td>
                                            <td>
                                                <%= user.getEmail() %>
                                            </td>
                                            <td>
                                                <form action="users" method="post" style="display:inline;">
                                                    <input type="hidden" name="action" value="delete">
                                                    <input type="hidden" name="id" value="<%= user.getId() %>">
                                                    <button type="submit" class="btn btn-danger btn-small">🗑️
                                                        Excluir</button>
                                                </form>
                                            </td>
                                        </tr>
                                        <% } } else { %>
                                            <tr>
                                                <td colspan="4" style="text-align:center;">Nenhum usuário cadastrado
                                                </td>
                                            </tr>
                                            <% } %>
                            </tbody>
                        </table>
                    </div>

                    <footer>
                        <p>&copy; 2025 EBAC - Módulo 39</p>
                    </footer>
                </div>
            </body>

            </html>