package br.com.crudjsp.servlets;

import br.com.crudjsp.acoes.AdicionaDespesa;
import br.com.crudjsp.acoes.ListaDespesas;
import br.com.crudjsp.acoes.RemoveDespesa;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ControladoraServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.service(request, response);

        String acao = request.getParameter("acao");

        if(acao.equals("ListaDespesas")){
            new ListaDespesas().executa(request, response);
        } else if (acao.equals("AdicionarDespesas")) {
            new AdicionaDespesa().executa(request, response);
        } else if (acao.equals("RemoveDespesa")) {
            new RemoveDespesa().executa(request, response);
            
        }
    }
}
