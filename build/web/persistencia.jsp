<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Usuario"%>
<%
    // Proteção de Sessão (Padrão exigido pelo Prof. Pareto)
    Usuario u = (Usuario) session.getAttribute("usuarioLogado");
    if (u == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Teoria - Camada de Persistência</title>
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
            border-top: 8px solid #9b59b6; 
        }
        h2 { color: #2c3e50; margin-top: 0; border-bottom: 2px solid #9b59b6; padding-bottom: 10px; }
        h3 { color: #8e44ad; margin-top: 25px; margin-bottom: 10px; font-size: 1.3em; }
        p { line-height: 1.8; color: #34495e; text-align: justify; margin-bottom: 20px; }
        .user-data { 
            background-color: #f8f9fa; 
            padding: 20px; 
            border-radius: 8px; 
            border: 1px solid #dee2e6;
            margin-bottom: 25px;
        }
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
            background: #9b59b6;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-voltar:hover { background: #8e44ad; }
    </style>
</head>
<body>

<div class="content-box">
    <h2>4. Camada de Persistência</h2>
    
    <div class="user-data">
        <h4 style="margin-top: 0; color: #2c3e50;">👤 Meus Dados Cadastrais (Recuperados via Sessão)</h4>
        <p style="margin-bottom: 0;"><strong>Nome de Usuário:</strong> <code><%= u.getUsuario() %></code></p>
        <p><strong>Senha:</strong> <code>******</code> (Protegida por máscara)</p>
    </div>

    <p>
        A <b>Camada de Persistência</b> é a parte do sistema responsável por salvar e recuperar dados de forma que eles não se percam ao fechar o navegador ou desligar o servidor. No modelo arquitetural, ela garante a durabilidade das informações processadas pela aplicação.
    </p>

    

    <p>
        Neste projeto, a persistência é feita através de um arquivo <b>JSON</b> (JavaScript Object Notation), localizado em <code>/WEB-INF/usuarios.json</code>. Diferente de um banco de dados relacional (como MySQL), o JSON é um formato leve de troca de dados que facilita a leitura tanto por humanos quanto por máquinas.
    </p>

    <p>
        Para manipular esses dados em Java, utilizamos a biblioteca <b>GSON</b> da Google. Ela permite realizar a conversão de objetos Java para o formato JSON (Serialização) e o inverso (Desserialização). Esse processo é fundamental para que as credenciais cadastradas na tela de cadastro sejam gravadas permanentemente no disco e validadas posteriormente na tela de login.
    </p>

    <div class="footer-nav">
        <a href="principal.jsp" class="btn-voltar">← Voltar ao Menu Principal</a>
    </div>
</div>

</body>
</html>