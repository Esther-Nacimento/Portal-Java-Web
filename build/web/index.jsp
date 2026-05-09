<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Java Web - Login do Estudante</title>
    <style>
        
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            background-color: #f0f2f5; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
            margin: 0; 
        }
        .box { 
            background: white; 
            padding: 40px; 
            border-radius: 12px; 
            box-shadow: 0 4px 20px rgba(0,0,0,0.1); 
            width: 350px; 
            border-top: 8px solid #2c3e50; 
        }
        h2 { color: #2c3e50; text-align: center; margin-top: 0; margin-bottom: 5px; }
        p.subtitle { text-align: center; color: #7f8c8d; font-size: 0.9em; margin-bottom: 25px; }
        
        label { display: block; margin-top: 15px; font-weight: bold; color: #34495e; }
        input { 
            width: 100%; 
            padding: 12px; 
            margin: 8px 0; 
            border: 1px solid #ddd; 
            border-radius: 6px; 
            box-sizing: border-box; 
        }
        button { 
            width: 100%; 
            padding: 12px; 
            background: #3498db; 
            color: white; 
            border: none; 
            border-radius: 6px; 
            cursor: pointer; 
            font-weight: bold; 
            margin-top: 15px;
            font-size: 1em;
            transition: 0.3s;
        }
        button:hover { background: #2980b9; }
        
        .msg { text-align: center; font-size: 0.85em; padding: 10px; border-radius: 5px; margin-bottom: 15px; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        .success { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        
        .footer-link { 
            display: block; 
            text-align: center; 
            margin-top: 25px; 
            text-decoration: none; 
            color: #3498db; 
            font-size: 0.9em; 
        }
        .footer-link:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="box">
        <h2>Acesso ao Portal</h2>
        <p class="subtitle">Aprendizado de Programação Web</p>

        <%-- Feedback de Erro ou Sucesso --%>
        <% if(request.getParameter("erro") != null) { %>
            <div class="msg error">Credenciais inválidas! Verifique o JSON.</div>
        <% } %>
        <% if(request.getParameter("sucesso") != null) { %>
            <div class="msg success">Estudante cadastrado com sucesso!</div>
        <% } %>

        <form action="LoginServlet" method="POST">
            <label>Usuário:</label>
            <input type="text" name="usuario" required placeholder="Digite seu usuário">
            
            <label>Senha:</label>
            <input type="password" name="senha" required placeholder="Digite sua senha">
            
            <button type="submit">Acessar Conteúdo</button>
        </form>
        
        <a href="cadastro.jsp" class="footer-link">Novo por aqui? Criar conta de estudante</a>
    </div>
</body>
</html>