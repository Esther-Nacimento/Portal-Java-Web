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
    <title>Teoria - Estrutura da Programação Web</title>
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
            border-top: 8px solid #3498db;
        }
        h2 { color: #2c3e50; margin-top: 0; border-bottom: 2px solid #3498db; padding-bottom: 10px; }
        p { line-height: 1.8; color: #34495e; text-align: justify; margin-bottom: 20px; }
        
        .footer-nav {
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eee;
            text-align: center;
        }
        .btn-voltar {
            display: inline-block;
            padding: 12px 30px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-voltar:hover { background: #2980b9; }
    </style>
</head>
<body>

<div class="content-box">
    <h2>1. A Estrutura da Programação Web</h2>
    
    <p>
        A programação Web baseia-se no modelo cliente-servidor, no qual o usuário interage com a aplicação por meio de um navegador (cliente), que envia requisições ao servidor responsável por processar essas solicitações e retornar uma resposta adequada. Esse modelo é fundamental para o funcionamento de aplicações web e pode ser observado na prática no sistema desenvolvido.
    </p>

    <p>
        Ao acessar uma página como <code>agendar.jsp</code>, o navegador do usuário envia uma requisição HTTP ao servidor. Essa requisição é recebida por um contêiner web, como o <b>Apache Tomcat</b>, que é responsável por executar a aplicação Java Web. O Tomcat processa a página JSP, convertendo-a em uma Servlet, compilando o código e executando-o na máquina virtual Java (JVM), conforme descrito na estrutura de funcionamento das aplicações web.
    </p>

    <p>
        Durante esse processamento, o sistema realiza verificações importantes relacionadas ao controle de acesso. Por meio do uso de sessões, utilizando métodos como <code>session.getAttribute("usuarioLogado")</code>, o sistema identifica se o usuário está autenticado. Caso não exista uma sessão ativa, o servidor realiza o redirecionamento para a página de login (<code>index.jsp</code>), impedindo o acesso indevido às páginas restritas. Esse mecanismo demonstra, na prática, a aplicação do gerenciamento de sessão, que é um dos conceitos fundamentais abordados na programação web.
    </p>

    <p>
        Quando o usuário está devidamente autenticado, o servidor continua o processamento da requisição e gera uma resposta em HTML, que é enviada de volta ao navegador. Dessa forma, o conteúdo da página é exibido ao usuário de forma dinâmica, evidenciando o papel das páginas JSP na construção da interface.
    </p>

    <p>
        Além disso, ao interagir com a aplicação, como ao preencher um formulário e enviá-lo, o usuário dispara uma nova requisição HTTP para o servidor, geralmente direcionada a uma Servlet ou outra página JSP. Essa nova requisição contém os dados informados, que são processados pelo sistema, mantendo o ciclo contínuo de comunicação entre cliente e servidor.
    </p>

    <p>
        Outro ponto importante é a organização da aplicação web, que segue uma estrutura de diretórios específica, como a pasta <b>WEB-INF</b>, onde ficam armazenados arquivos sensíveis, como classes Java e configurações, que não podem ser acessados diretamente pelo navegador. Essa organização contribui para a segurança e o correto funcionamento da aplicação.
    </p>

    <p>
        Dessa forma, a estrutura da programação web com Java envolve a interação entre cliente, servidor, contêiner web, requisições HTTP, páginas JSP e controle de sessão, permitindo o desenvolvimento de sistemas dinâmicos, seguros e bem estruturados, como o sistema apresentado neste trabalho.
    </p>

    <div class="footer-nav">
        <a href="principal.jsp" class="btn-voltar">← Voltar ao Menu Principal</a>
    </div>
</div>

</body>
</html>