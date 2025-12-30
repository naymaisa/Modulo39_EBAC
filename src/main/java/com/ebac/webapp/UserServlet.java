package com.ebac.webapp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet para gerenciamento de usuários
 * Demonstra operações CRUD básicas
 */
public class UserServlet extends HttpServlet {

    private static List<User> users = new ArrayList<>();

    static {
        // Dados de exemplo
        users.add(new User(1, "João Silva", "joao@email.com"));
        users.add(new User(2, "Maria Santos", "maria@email.com"));
        users.add(new User(3, "Pedro Costa", "pedro@email.com"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("users", users);
        request.getRequestDispatcher("/users.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            int id = users.size() + 1;
            users.add(new User(id, name, email));
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            users.removeIf(u -> u.getId() == id);
        }

        response.sendRedirect("users");
    }

    // Classe interna User
    public static class User {
        private int id;
        private String name;
        private String email;

        public User(int id, String name, String email) {
            this.id = id;
            this.name = name;
            this.email = email;
        }

        public int getId() {
            return id;
        }

        public String getName() {
            return name;
        }

        public String getEmail() {
            return email;
        }
    }
}
