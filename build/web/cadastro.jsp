<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>POO Web - Cadastro de Estudante</title>
    <style>
        /* CSS para o Portal de Aprendizado */
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
            border-top: 8px solid #27ae60; 
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
            background: #27ae60; 
            color: white; 
            border: none; 
            border-radius: 6px; 
            cursor: pointer; 
            font-weight: bold; 
            margin-top: 15px;
            font-size: 1em;
            transition: 0.3s;
        }
        button:hover { background: #219150; }
        .footer-link { 
            display: block; 
            text-align: center; 
            margin-top: 25px; 
            text-decoration: none; 
            color: #7f8c8d; 
            font-size: 0.9em; 
        }
        .footer-link:hover { text-decoration: underline; color: #27ae60; }
    </style>
</head>
<body>
    <div class="box">
        <h2>Criar Conta</h2>
        <p class="subtitle">Portal de Aprendizado Java Web</p>
        
        <form action="CadastroServlet" method="POST">
            <label>Definir Usuário:</label>
            <input type="text" name="usuario" required placeholder="Ex: aluno_ads">
            
            <label>Definir Senha:</label>
            <input type="password" name="senha" required placeholder="Crie uma senha segura">
            
            <button type="submit">Registrar Estudante</button>
        </form>
        
        <a href="index.jsp" class="footer-link">Já possui conta? Voltar ao login</a>
    </div>
</body>
</html>