package com.ebac.webapp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet da página inicial
 * Demonstra o uso básico de Servlets em Java
 */
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Home - EBAC Mod39</title>");
            out.println("<link rel='stylesheet' href='css/style.css'>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h1>Bem-vindo à Aplicação Web EBAC</h1>");
            out.println("<p>Esta é uma aplicação Java Web utilizando Servlets e JSP no Tomcat</p>");
            out.println("<div class='menu'>");
            out.println("<a href='index.jsp' class='btn'>Página Inicial</a>");
            out.println("<a href='users' class='btn'>Gerenciar Usuários</a>");
            out.println("<a href='products' class='btn'>Gerenciar Produtos</a>");
            out.println("</div>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
