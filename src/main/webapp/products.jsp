<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.List" %>
        <%@ page import="com.ebac.webapp.ProductServlet.Product" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Gerenciar Produtos - EBAC</title>
                <link rel="stylesheet" href="css/style.css">
            </head>

            <body>
                <div class="container">
                    <header>
                        <h1>📦 Gerenciamento de Produtos</h1>
                        <a href="index.jsp" class="btn btn-back">← Voltar</a>
                    </header>

                    <div class="form-section">
                        <h2>Adicionar Novo Produto</h2>
                        <form action="products" method="post">
                            <input type="hidden" name="action" value="add">
                            <div class="form-group">
                                <label for="name">Nome do Produto:</label>
                                <input type="text" id="name" name="name" required>
                            </div>
                            <div class="form-group">
                                <label for="price">Preço (R$):</label>
                                <input type="number" id="price" name="price" step="0.01" min="0" required>
                            </div>
                            <div class="form-group">
                                <label for="quantity">Quantidade:</label>
                                <input type="number" id="quantity" name="quantity" min="0" required>
                            </div>
                            <button type="submit" class="btn btn-success">➕ Adicionar Produto</button>
                        </form>
                    </div>

                    <div class="table-section">
                        <h2>Estoque de Produtos</h2>
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Preço</th>
                                    <th>Quantidade</th>
                                    <th>Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List<Product> products = (List<Product>) request.getAttribute("products");
                                        if (products != null && !products.isEmpty()) {
                                        double total = 0;
                                        for (Product product : products) {
                                        total += product.getPrice() * product.getQuantity();
                                        %>
                                        <tr>
                                            <td>
                                                <%= product.getId() %>
                                            </td>
                                            <td>
                                                <%= product.getName() %>
                                            </td>
                                            <td>R$ <%= String.format("%.2f", product.getPrice()) %>
                                            </td>
                                            <td>
                                                <%= product.getQuantity() %>
                                            </td>
                                            <td>
                                                <form action="products" method="post" style="display:inline;">
                                                    <input type="hidden" name="action" value="delete">
                                                    <input type="hidden" name="id" value="<%= product.getId() %>">
                                                    <button type="submit" class="btn btn-danger btn-small">🗑️
                                                        Excluir</button>
                                                </form>
                                            </td>
                                        </tr>
                                        <% } %>
                                            <tr class="total-row">
                                                <td colspan="4"><strong>Valor Total do Estoque:</strong></td>
                                                <td><strong>R$ <%= String.format("%.2f", total) %></strong></td>
                                            </tr>
                                            <% } else { %>
                                                <tr>
                                                    <td colspan="5" style="text-align:center;">Nenhum produto cadastrado
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