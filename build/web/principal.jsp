<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Controle de Sessão: Impede acesso sem login
    if (session.getAttribute("usuarioLogado") == null) {
        response.sendRedirect("index.jsp");
        return; 
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java Web - Portal de Aprendizado</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background-color: #f0f2f5; margin: 0; padding: 20px; }
        .container { max-width: 900px; margin: auto; background: white; padding: 40px; border-radius: 15px; box-shadow: 0 5px 20px rgba(0,0,0,0.1); }
        header { border-bottom: 3px solid #34495e; margin-bottom: 30px; padding-bottom: 20px; display: flex; justify-content: space-between; align-items: center; }
        h1 { color: #2c3e50; margin: 0; font-size: 24px; }
        .user-info { font-size: 0.9em; color: #7f8c8d; }
        
        .menu-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
        .menu-item { 
            background: #fff; border: 1px solid #e0e0e0; padding: 25px; border-radius: 10px; 
            text-decoration: none; color: #2c3e50; transition: 0.3s; border-left: 6px solid #3498db;
        }
        .menu-item:hover { transform: translateY(-5px); box-shadow: 0 4px 12px rgba(0,0,0,0.1); background: #f8fbff; }
        .menu-item h3 { margin-top: 0; color: #2980b9; }
        .menu-item p { margin-bottom: 0; font-size: 0.9em; color: #666; }

        .btn-logout { background: #e74c3c; color: white; padding: 10px 20px; border-radius: 5px; text-decoration: none; font-weight: bold; }
        .btn-logout:hover { background: #c0392b; }
    </style>
</head>
<body>

<div class="container">
    <header>
        <div>
            <h1> Bem-vindo(a) ao ambiente de estudos </h1>
            <span class="user-info"> Explore os conceitos fundamentais da Programação Orietada Objetos Web com Java</span>
        </div>
        <a href="LogoutServlet" class="btn-logout">Sair (Logout)</a>
    </header>

    <div class="menu-grid">
        <a href="estrutura.jsp" class="menu-item">
            <h3> Estrutura da Programação Web </h3>
            <p>Conceitos de Cliente-Servidor, Protocolo HTTP e o papel do Servidor Apache Tomcat.</p>
        </a>

        <a href="build.jsp" class="menu-item" style="border-left-color: #27ae60;">
            <h3>️ Ferramentas de Build </h3>
            <p>Automação e gerenciamento de dependências com Apache Ant, Maven e Gradle.</p>
        </a>

        <a href="javaweb.jsp" class="menu-item" style="border-left-color: #f1c40f;">
            <h3> Programação Java Web </h3>
            <p>O funcionamento das Servlets e a criação de interfaces dinâmicas com JSP.</p>
        </a>

        <a href="persistencia.jsp" class="menu-item" style="border-left-color: #9b59b6;">
            <h3> Camada de Persistência </h3>
            <p>Armazenamento de dados local utilizando arquivos JSON e a biblioteca GSON.</p>
        </a>
    </div>

    <footer style="margin-top: 40px; padding-top: 20px; border-top: 1px solid #eee; text-align: center; color: #95a5a6; font-size: 0.8em;">
        Sistema desenvolvido para a avaliação A1 - Programação Orientada a Objetos Web
    </footer>
</div>

</body>
</html>