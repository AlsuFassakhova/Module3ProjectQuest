package org.javarush.module3projectquest;


import org.javarush.module3projectquest.services.PlayerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "GameServlet", value = "/game")
public class GameServlet extends HttpServlet {
    PlayerService playerService = new PlayerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("answer") != null) {
            doPost(req, resp);
        }

        String choice = req.getParameter("choice");
        req.setAttribute("choice", choice);

        switch (choice) {
            case "1", "2" -> req.getRequestDispatcher(Constants.secondScenePath).forward(req, resp);
            case "5" -> {
                playerService.getInstance().gamesPlayedIncrement();
                req.getRequestDispatcher(Constants.gameEndPath).forward(req, resp);
            }
            case "6" -> req.getRequestDispatcher(Constants.thirdScenePath).forward(req, resp);
            case "7", "8" -> req.getRequestDispatcher(Constants.forthScenePath).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        session.setMaxInactiveInterval(-1);
        session.setAttribute("name", playerService.getInstance().getName());
        req.getSession().setAttribute("gamesPlayed", playerService.getInstance().getGamesPlayed());


        if (req.getParameter("answer") != null) {
            String answer = req.getParameter("answer");
            if (playerService.isAnswerCorrect(answer)) {
                req.setAttribute("choice", 3);
            } else {
                req.setAttribute("choice", 4);
            }
            req.getRequestDispatcher(Constants.gameEndPath).forward(req, resp);
        }

        int diceNumber = playerService.rollTheDice();
        req.setAttribute("dice", diceNumber);

        if (diceNumber < 7) {
            req.setAttribute("choice", 7);
        } else {
            req.setAttribute("choice", 8);
        }

        playerService.getInstance().gamesPlayedIncrement();
        session.setAttribute("gamesPlayed", playerService.getInstance().getGamesPlayed());

        req.getRequestDispatcher(Constants.gameEndPath).forward(req, resp);

    }
}
