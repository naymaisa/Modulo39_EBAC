# 🎓 Aplicação Web Java - EBAC Módulo 39

Uma aplicação web completa desenvolvida em Java utilizando Servlets, JSP e Apache Tomcat.

## 📋 Sobre o Projeto

Este projeto foi desenvolvido para o Módulo 39 da EBAC e demonstra conceitos fundamentais de desenvolvimento web com Java, incluindo:

- ☕ **Java Servlets** - Processamento de requisições HTTP
- 📄 **JSP (JavaServer Pages)** - Geração dinâmica de conteúdo HTML
- 🚀 **Apache Tomcat** - Servidor de aplicação
- 📦 **Maven** - Gerenciamento de dependências e build
- 🎨 **CSS3** - Estilização moderna e responsiva

## 🚀 Funcionalidades

### 1. Página Inicial
- Interface intuitiva com informações sobre o projeto
- Links de navegação para todas as funcionalidades

### 2. Gerenciamento de Usuários
- ➕ Adicionar novos usuários
- 📋 Listar todos os usuários
- 🗑️ Excluir usuários

### 3. Gerenciamento de Produtos
- ➕ Cadastrar novos produtos
- 📋 Visualizar estoque completo
- 💰 Calcular valor total do estoque
- 🗑️ Remover produtos

## 🛠️ Tecnologias Utilizadas

- **Java** 11
- **Maven** 3.x
- **Servlet API** 4.0.1
- **JSP API** 2.3.3
- **JSTL** 1.2
- **Apache Tomcat** 9.x ou 10.x
- **HTML5** & **CSS3**

## 📁 Estrutura do Projeto

```
webapp-java-tomcat/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/ebac/webapp/
│       │       ├── HomeServlet.java
│       │       ├── UserServlet.java
│       │       └── ProductServlet.java
│       └── webapp/
│           ├── WEB-INF/
│           │   └── web.xml
│           ├── css/
│           │   └── style.css
│           ├── index.jsp
│           ├── users.jsp
│           └── products.jsp
└── pom.xml
```

## ⚙️ Pré-requisitos

Antes de começar, certifique-se de ter instalado:

1. **Java JDK 11** ou superior
   - Verifique: `java -version`
   - Download: https://www.oracle.com/java/technologies/downloads/

2. **Maven** 3.x
   - Verifique: `mvn -version`
   - Download: https://maven.apache.org/download.cgi

3. **Apache Tomcat** 9.x ou 10.x
   - Download: https://tomcat.apache.org/download-90.cgi

## 🔧 Como Executar

### Opção 1: Build com Maven e Deploy Manual

1. **Clone ou navegue até o diretório do projeto:**
   ```bash
   cd "c:\Users\Nay Safada\Desktop\Mod39\webapp-java-tomcat"
   ```

2. **Compile e gere o arquivo WAR:**
   ```bash
   mvn clean package
   ```

3. **Copie o arquivo WAR gerado para o Tomcat:**
   - O arquivo `webapp-ebac.war` estará em `target/`
   - Copie para `%CATALINA_HOME%\webapps\`
   ```bash
   copy target\webapp-ebac.war C:\caminho\para\tomcat\webapps\
   ```

4. **Inicie o Tomcat:**
   - Windows: Execute `%CATALINA_HOME%\bin\startup.bat`
   - Linux/Mac: Execute `$CATALINA_HOME/bin/startup.sh`

5. **Acesse a aplicação:**
   - Abra o navegador em: http://localhost:8080/webapp-ebac/

### Opção 2: Usando Maven Tomcat Plugin (Desenvolvimento)

Você pode adicionar o plugin do Tomcat no `pom.xml` e executar diretamente:

```bash
mvn tomcat7:run
```

### Opção 3: Deploy via Tomcat Manager

1. Acesse o Tomcat Manager: http://localhost:8080/manager
2. Use a opção "WAR file to deploy"
3. Selecione o arquivo `target/webapp-ebac.war`
4. Clique em "Deploy"

## 📱 Uso da Aplicação

### Página Inicial
- Acesse: `http://localhost:8080/webapp-ebac/`
- Visualize informações sobre o projeto
- Navegue pelos módulos disponíveis

### Gerenciar Usuários
- Acesse: `http://localhost:8080/webapp-ebac/users`
- Adicione usuários com nome e email
- Visualize a lista de usuários cadastrados
- Exclua usuários conforme necessário

### Gerenciar Produtos
- Acesse: `http://localhost:8080/webapp-ebac/products`
- Cadastre produtos com nome, preço e quantidade
- Visualize o estoque completo
- Veja o valor total do estoque calculado automaticamente
- Remova produtos do estoque

## 🎯 Conceitos Demonstrados

### 1. **Padrão MVC (Model-View-Controller)**
   - **Model:** Classes internas User e Product
   - **View:** Arquivos JSP (index.jsp, users.jsp, products.jsp)
   - **Controller:** Servlets (HomeServlet, UserServlet, ProductServlet)

### 2. **Servlets HTTP**
   - Métodos doGet() e doPost()
   - Processamento de parâmetros de requisição
   - Redirecionamento e forward

### 3. **JSP (JavaServer Pages)**
   - Scriptlets Java embutidos
   - Expression Language
   - Uso de JSTL (implícito)

### 4. **CRUD Operations**
   - **Create:** Adicionar usuários e produtos
   - **Read:** Listar usuários e produtos
   - **Update:** (Pode ser implementado)
   - **Delete:** Remover usuários e produtos

## 🔒 Configurações de Segurança

Para produção, considere adicionar:
- Autenticação e autorização
- Validação de entrada mais robusta
- Proteção contra SQL Injection (quando usar banco de dados)
- HTTPS/SSL
- CSRF protection

## 📝 Melhorias Futuras

- [ ] Integração com banco de dados (MySQL, PostgreSQL)
- [ ] Função de editar usuários e produtos
- [ ] Sistema de autenticação
- [ ] Paginação nas listagens
- [ ] Busca e filtros
- [ ] API REST
- [ ] Testes unitários
- [ ] Validação de formulários no cliente

## 🐛 Solução de Problemas

### Erro: "404 - Not Found"
- Verifique se o Tomcat está rodando
- Confirme se o arquivo WAR foi deployado corretamente
- Verifique o caminho da URL

### Erro: "500 - Internal Server Error"
- Verifique os logs do Tomcat em `%CATALINA_HOME%\logs\`
- Confirme se todas as classes foram compiladas corretamente
- Verifique o arquivo web.xml

### Porta 8080 já em uso
- Pare outros serviços usando a porta 8080
- Ou altere a porta do Tomcat em `server.xml`

## 📚 Recursos de Aprendizado

- [Tutorial Java Servlets - Oracle](https://docs.oracle.com/javaee/7/tutorial/servlets.htm)
- [JSP Tutorial](https://www.javatpoint.com/jsp-tutorial)
- [Apache Tomcat Documentation](https://tomcat.apache.org/tomcat-9.0-doc/)
- [Maven Getting Started](https://maven.apache.org/guides/getting-started/)

## 👨‍💻 Autor

Projeto desenvolvido para EBAC - Escola Britânica de Artes Criativas e Tecnologia  
Módulo 39 - Tecnologias Web com Java

## 📄 Licença

Este projeto é de código aberto e está disponível para fins educacionais.

---

**Desenvolvido com ☕ e 💙 para a EBAC**

🎓 Bons estudos e bom desenvolvimento!
