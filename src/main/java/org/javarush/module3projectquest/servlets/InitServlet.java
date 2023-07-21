package org.javarush.module3projectquest.servlets;


import lombok.extern.slf4j.Slf4j;
import org.javarush.module3projectquest.Constants;
import org.javarush.module3projectquest.services.PlayerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "InitServlet", value = "/gameStart")
@Slf4j
public class InitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(Constants.firstScenePath);
        requestDispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PlayerService playerService = new PlayerService();
        HttpSession session = request.getSession();

        log.info("New session created");

        session.setMaxInactiveInterval(-1);

        String name = request.getParameter("name");
        playerService.startNewGame(name);

        session.setAttribute("name", playerService.getInstance().getName());
        session.setAttribute("gamesPlayed", playerService.getInstance().getGamesPlayed());

        log.info("New game has been started");

        request.setAttribute("name", name);

        doGet(request, response);
    }
}
