<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Controle de Sessão: Impede o acesso às páginas restritas sem login
    if (session.getAttribute("usuarioLogado") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Teoria - Ferramentas de Build</title>
    <style>
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            background-color: #f0f2f5; 
            margin: 0; 
            padding: 40px;
            display: flex;
            justify-content: center;
        }
        .content-box { 
            max-width: 850px; 
            background: white; 
            padding: 40px; 
            border-radius: 15px; 
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            border-top: 8px solid #27ae60; /* Verde para identificar a seção de Build */
        }
        h2 { color: #2c3e50; margin-top: 0; border-bottom: 2px solid #27ae60; padding-bottom: 10px; }
        h3 { color: #27ae60; margin-top: 25px; margin-bottom: 10px; font-size: 1.3em; }
        p { line-height: 1.8; color: #34495e; text-align: justify; margin-bottom: 20px; }
        code { background: #f8f9fa; padding: 2px 6px; border-radius: 4px; color: #e83e8c; font-family: 'Consolas', monospace; border: 1px solid #dee2e6; }
        
        .footer-nav {
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eee;
            text-align: center;
        }
        .btn-voltar {
            display: inline-block;
            padding: 12px 30px;
            background: #27ae60;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-voltar:hover { background: #219150; }
    </style>
</head>
<body>

<div class="content-box">
    <h2>2. Ferramentas de Build – o que são e para que servem</h2>
    
    <p>
        As ferramentas de build são utilizadas no desenvolvimento de software para automatizar o processo de construção de uma aplicação. Elas são responsáveis por compilar o código-fonte, organizar os arquivos do projeto, gerenciar dependências e gerar versões prontas para execução ou implantação.
    </p>

    <p>
        Essas ferramentas são essenciais, pois evitam tarefas manuais repetitivas, reduzem erros e tornam o processo de desenvolvimento mais rápido e eficiente. No contexto de aplicações Java Web, como este sistema de consultas médicas, as ferramentas de build garantem que todas as páginas JSP e classes Java sejam corretamente processadas e preparadas para execução no servidor Apache Tomcat.
    </p>

    <h3>• Apache Ant</h3>
    <p>
        O Apache Ant é uma ferramenta de build baseada em arquivos XML, geralmente chamados de <code>build.xml</code>. Nela, o desenvolvedor define tarefas que devem ser executadas, como compilar o código, limpar diretórios e gerar arquivos de saída.
    </p>
    <p>
        O Ant é conhecido por sua simplicidade e controle direto sobre o processo de build. No ambiente NetBeans, ele é frequentemente utilizado como base para as ações de “Clean and Build” em projetos Java.
    </p>

    <h3>• Apache Maven</h3>
    <p>
        O Apache Maven é uma ferramenta de build mais avançada, que além de automatizar a construção do projeto, também gerencia dependências de forma automática. Ele utiliza um arquivo chamado <code>pom.xml</code>, onde são definidas as configurações do projeto e as bibliotecas necessárias.
    </p>
    <p>
        Uma das principais vantagens do Maven é baixar automaticamente as dependências, garantindo que o projeto tenha todas as bibliotecas necessárias para funcionar corretamente.
    </p>

    <h3>• Gradle</h3>
    <p>
        O Gradle é uma ferramenta moderna de automação de build que combina características do Ant e do Maven. Ele utiliza uma linguagem mais flexível (baseada em Groovy ou Kotlin), permitindo maior personalização do processo de build.
    </p>
    <p>
        O Gradle é bastante utilizado em projetos maiores e mais complexos, pois oferece melhor desempenho e maior controle sobre as etapas de construção da aplicação.
    </p>

    <div class="footer-nav">
        <a href="principal.jsp" class="btn-voltar">← Voltar ao Menu Principal</a>
    </div>
</div>

</body>
</html>