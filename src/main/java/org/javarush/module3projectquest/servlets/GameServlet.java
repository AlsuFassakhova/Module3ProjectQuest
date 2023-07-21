package org.javarush.module3projectquest.servlets;


import lombok.extern.slf4j.Slf4j;
import org.javarush.module3projectquest.Constants;
import org.javarush.module3projectquest.services.PlayerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GameServlet", value = "/game")
@Slf4j
public class GameServlet extends HttpServlet {
    PlayerService playerService = new PlayerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("answer") != null || req.getParameter("dice") != null) {
            doPost(req, resp);
        }

        String choice = req.getParameter("choice");
        req.setAttribute("choice", choice);

        switch (choice) {
            case "1", "2" -> req.getRequestDispatcher(Constants.secondScenePath).forward(req, resp);
            case "5" -> {
                log.info("DEFEAT");
                playerService.getInstance().gamesPlayedIncrement();
                req.getRequestDispatcher(Constants.gameEndPath).forward(req, resp);
            }
            case "6" -> req.getRequestDispatcher(Constants.thirdScenePath).forward(req, resp);
            case "7", "8" -> req.getRequestDispatcher(Constants.forthScenePath).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("answer") != null) {
            String answer = req.getParameter("answer");
            if (playerService.isAnswerCorrect(answer)) {
                req.setAttribute("choice", 3);
                log.info("VICTORY");
            } else {
                req.setAttribute("choice", 4);
                log.info("DEFEAT");
            }
        } else {
            int diceNumber = playerService.rollTheDices();
            req.setAttribute("dice", diceNumber);
            log.info("Rolled: " + diceNumber);
            if (diceNumber < 7) {
                req.setAttribute("choice", 9);
                log.info("DEFEAT");
            } else {
                req.setAttribute("choice", 10);
                log.info("VICTORY");
            }
        }
        playerService.getInstance().gamesPlayedIncrement();
        req.getSession().setAttribute("gamesPlayed", playerService.getInstance().getGamesPlayed());

        req.getRequestDispatcher(Constants.gameEndPath).forward(req, resp);

    }
}

