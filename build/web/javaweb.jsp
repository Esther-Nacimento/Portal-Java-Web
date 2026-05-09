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
    <title>Teoria - Programação Java Web</title>
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
            border-top: 8px solid #f1c40f; /* Amarelo/Dourado para Java Web */
        }
        h2 { color: #2c3e50; margin-top: 0; border-bottom: 2px solid #f1c40f; padding-bottom: 10px; }
        h3 { color: #f39c12; margin-top: 25px; margin-bottom: 10px; font-size: 1.3em; }
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
            background: #f1c40f;
            color: #2c3e50;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-voltar:hover { background: #f39c12; color: white; }
    </style>
</head>
<body>

<div class="content-box">
    <h2>3. Programação Java Web (Servlet e JSP)</h2>
    
    <p>
        A programação Java Web é baseada na utilização de componentes que são executados no lado do servidor, sendo responsáveis por processar as regras de negócio e gerar respostas dinâmicas para o usuário. Nesse contexto, destacam-se duas tecnologias fundamentais abordadas na disciplina: as Servlets e as páginas JSP, que atuam de forma complementar no desenvolvimento de aplicações web.
    </p>

    <h3>• Servlet</h3>
    <p>
        As Servlets são classes Java responsáveis por controlar o fluxo da aplicação, recebendo e processando as requisições enviadas pelo cliente. Elas podem ser entendidas como a camada de controle (<b>Controller</b>), pois são responsáveis por aplicar as regras de negócio e definir qual será a resposta retornada ao usuário.
    </p>

    

    <p>
        No sistema desenvolvido, esse conceito pode ser observado na utilização de uma Servlet para processar o login do usuário. Ao submeter o formulário, uma requisição do tipo <code>POST</code> é enviada ao servidor, onde a Servlet realiza a validação das credenciais, acessando os dados armazenados em arquivo JSON. A partir dessa verificação, o sistema decide se o usuário será autenticado e redirecionado para a área restrita ou se deverá retornar à página de login.
    </p>
    <p>
        Além disso, as Servlets possuem um ciclo de vida gerenciado pelo contêiner web (como o Apache Tomcat), que envolve métodos importantes como <code>init()</code>, responsável pela inicialização; <code>service()</code>, que trata as requisições; e <code>destroy()</code>, utilizado para finalizar a Servlet. Esse gerenciamento garante o funcionamento adequado da aplicação no servidor.
    </p>

    <h3>• JSP (JavaServer Pages)</h3>
    <p>
        As páginas JSP (JavaServer Pages) são utilizadas para a construção da interface da aplicação, sendo responsáveis pela apresentação das informações ao usuário. Diferentemente das Servlets, que focam na lógica, o JSP atua na camada de visualização (<b>View</b>), permitindo a criação de páginas dinâmicas a partir da combinação de HTML com elementos Java.
    </p>
    <p>
        Um conceito importante é que o JSP não é executado diretamente como foi escrito. Antes disso, o contêiner web transforma automaticamente o arquivo JSP em uma Servlet, que é então compilada e executada. Esse processo ocorre de forma transparente para o desenvolvedor, conforme abordado na apostila da disciplina.
    </p>
    <p>
        No sistema desenvolvido, as páginas JSP são utilizadas para exibir informações dinâmicas, como mensagens ao usuário e conteúdo personalizado após o login. Dessa forma, é possível perceber a separação entre lógica e apresentação, contribuindo para uma melhor organização da aplicação.
    </p>

    <div class="footer-nav">
        <a href="principal.jsp" class="btn-voltar">← Voltar ao Menu Principal</a>
    </div>
</div>

</body>
</html>