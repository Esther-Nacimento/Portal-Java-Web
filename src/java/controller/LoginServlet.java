package controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userParam = request.getParameter("usuario");
        String passParam = request.getParameter("senha");

        // 1. Define o caminho do arquivo JSON dentro do WEB-INF
        String path = getServletContext().getRealPath("/WEB-INF/usuarios.json");
        File arquivo = new File(path);
        
        Usuario usuarioAutenticado = null;
        Gson gson = new Gson();

        // 2. Verifica se o arquivo existe antes de tentar ler
        if (arquivo.exists()) {
            // Uso de try-with-resources para fechar o reader automaticamente
            try (BufferedReader reader = new BufferedReader(new FileReader(arquivo))) {
                
                // Converte o JSON para uma lista de objetos Usuario
                List<Usuario> usuarios = gson.fromJson(reader, new TypeToken<List<Usuario>>(){}.getType());
                
                // 3. Lógica de autenticação
                if (usuarios != null) {
                    for (Usuario u : usuarios) {
                        if (u.getUsuario().equals(userParam) && u.getSenha().equals(passParam)) {
                            usuarioAutenticado = u;
                            break;
                        }
                    }
                }
            } catch (Exception e) {
                // Log de erro opcional: e.printStackTrace();
            }
        }

        // 4. Verificação final e gerenciamento de sessão
        if (usuarioAutenticado != null) {
            // Cria a sessão 
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogado", usuarioAutenticado);
            
            // Redireciona para a área logada
            response.sendRedirect("principal.jsp");
        } else {
            // Se as credenciais estiverem incorretas ou o arquivo não existir, volta com erro
            response.sendRedirect("index.jsp?erro=1");
        }
    }
}