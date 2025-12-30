package com.ebac.webapp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet para gerenciamento de produtos
 * Demonstra listagem e cadastro de produtos
 */
public class ProductServlet extends HttpServlet {

    private static List<Product> products = new ArrayList<>();

    static {
        // Dados de exemplo
        products.add(new Product(1, "Notebook Dell", 3500.00, 10));
        products.add(new Product(2, "Mouse Logitech", 150.00, 50));
        products.add(new Product(3, "Teclado Mecânico", 450.00, 25));
        products.add(new Product(4, "Monitor LG 24\"", 890.00, 15));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("products", products);
        request.getRequestDispatcher("/products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("name");
            double price = Double.parseDouble(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int id = products.size() + 1;
            products.add(new Product(id, name, price, quantity));
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            products.removeIf(p -> p.getId() == id);
        }

        response.sendRedirect("products");
    }

    // Classe interna Product
    public static class Product {
        private int id;
        private String name;
        private double price;
        private int quantity;

        public Product(int id, String name, double price, int quantity) {
            this.id = id;
            this.name = name;
            this.price = price;
            this.quantity = quantity;
        }

        public int getId() {
            return id;
        }

        public String getName() {
            return name;
        }

        public double getPrice() {
            return price;
        }

        public int getQuantity() {
            return quantity;
        }
    }
}
