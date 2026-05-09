package controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;

public class CadastroServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Pega os dados do formulário de cadastro.jsp
        String userNovo = request.getParameter("usuario");
        String senhaNova = request.getParameter("senha");

        // 2. Define o caminho do arquivo JSON no servidor
        String caminhoJson = getServletContext().getRealPath("/WEB-INF/usuarios.json");
        File arquivo = new File(caminhoJson);
        
        // 3. Prepara o GSON (com Pretty Printing para o JSON ficar organizado)
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        List<Usuario> lista = new ArrayList<>();

        // 4. Se o arquivo já existir, lê os usuários atuais para não sobrescrevê-los
        if (arquivo.exists()) {
            try (BufferedReader reader = new BufferedReader(new FileReader(arquivo))) {
                Type tipoLista = new TypeToken<List<Usuario>>(){}.getType();
                List<Usuario> carregados = gson.fromJson(reader, tipoLista);
                if (carregados != null) {
                    lista.addAll(carregados);
                }
            }
        }

        // 5. Cria o novo objeto usuário e adiciona na lista
        Usuario novo = new Usuario();
        novo.setUsuario(userNovo);
        novo.setSenha(senhaNova);
        lista.add(novo);

        // 6. Grava a lista atualizada de volta no arquivo JSON (Persistência)
        try (FileWriter writer = new FileWriter(arquivo)) {
            gson.toJson(lista, writer);
        }

        // 7. Redireciona para o login com mensagem de sucesso
        response.sendRedirect("index.jsp?sucesso=1");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        processRequest(req, resp);
    }
}