# Aplicação Web Java - EBAC Módulo 39 ☕

Fala pessoal! Este é meu projeto do Módulo 39 da EBAC, onde criei uma aplicação web usando Java com Servlets, JSP e Tomcat.

## O que tem nesse projeto?

Basicamente é uma aplicação web bem completa que demonstra como funciona o desenvolvimento web com Java. Usei as seguintes tecnologias:

- **Java Servlets** - Para processar as requisições do usuário
- **JSP** - Para criar as páginas dinâmicas
- **Tomcat** - Servidor pra rodar tudo
- **Maven** - Pra gerenciar as dependências (facilita muito!)
- **CSS** - Deixei tudo bonitinho com um visual moderno

## O que dá pra fazer?

A aplicação tem três áreas principais:

**Página Inicial**  
Você chega lá e já vê uma introdução legal sobre o projeto, com links pra navegar entre as funcionalidades.

**Gerenciar Usuários**  
Aqui você pode cadastrar usuários (nome e email), ver a lista completa e apagar quando quiser.

**Gerenciar Produtos**  
Mesma ideia dos usuários, mas pra produtos. Dá pra cadastrar com nome, preço e quantidade, ver o estoque todo e até calcula o valor total automaticamente. Bem útil!

## Tecnologias que usei

- Java 11
- Maven 3.x
- Servlet API 4.0.1
- JSP API 2.3.3
- JSTL 1.2
- Apache Tomcat (versão 7 com o plugin do Maven)
- HTML5 e CSS3

## Como tá organizado

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

## O que você precisa ter instalado?

Se você for usar o IntelliJ IDEA (ou outra IDE que já vem com Maven integrado), só precisa de:
- **Java JDK 11** ou mais recente - pra verificar se já tem: `java -version`

Se for rodar direto pelo terminal:
- Java JDK 11+
- Maven 3.x

**A boa notícia:** Não precisa baixar o Tomcat separado! O projeto já vem configurado com o plugin do Maven que roda tudo pra você.

## Como rodar esse projeto?

É bem tranquilo! Se você tiver o IntelliJ IDEA (recomendo!):

1. Abre o IntelliJ e clica em `File` → `Open`
2. Escolhe a pasta do projeto
3. Espera o IntelliJ baixar as dependências (demora um pouquinho na primeira vez)
4. No painel Maven (lado direito), expande: `webapp-java-tomcat` → `Plugins` → `tomcat7`
5. Dá um duplo clique em `tomcat7:run`
6. Pronto! Quando aparecer "Running war on http://localhost:8080/webapp-ebac", é só abrir no navegador

**Pelo terminal:**
```bash
mvn clean tomcat7:run
```

Depois acessa: `http://localhost:8080/webapp-ebac/`

## Como usar?

É bem intuitivo. Você vai cair na página inicial e de lá pode:

- Clicar em **Gerenciar Usuários** pra brincar com o CRUD de usuários
- Clicar em **Gerenciar Produtos** pra testar o cadastro de produtos
- Adicionar, listar e deletar o quanto quiser!

## O que aprendi fazendo isso?

Esse projeto me ajudou a entender melhor:

- **Padrão MVC** - Separar bem as responsabilidades do código
- **Servlets** - Como Java processa as requisições HTTP (doGet, doPost, etc)
- **JSP** - Criar páginas dinâmicas misturando HTML com Java
- **CRUD** - Criar, Ler, Atualizar (ainda não tem) e Deletar informações

## Coisas que ainda posso melhorar

- Conectar com um banco de dados de verdade (tipo MySQL)
- Adicionar a função de editar (por enquanto só tem cadastrar e deletar)
- Colocar um sisteminha de login
- Fazer paginação quando tiver muitos registros
- Adicionar busca e filtros

## Se der algum erro...

**Erro 404:** Verifica se o Tomcat iniciou certinho. Olha no console se tem a mensagem "Running war on..."

**Porta 8080 ocupada:** Alguma outra coisa tá usando essa porta. Fecha ela ou muda a porta no pom.xml (tag `<port>`)

**Maven não funciona:** Se você tiver usando uma IDE como IntelliJ ou Eclipse, usa o Maven integrado delas mesmo.

---

Projeto feito com dedicação para o curso da EBAC ☕

Qualquer dúvida, só chamar!
