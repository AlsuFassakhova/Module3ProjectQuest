package org.javarush.module3projectquest.servlets;

import lombok.extern.slf4j.Slf4j;
import org.javarush.module3projectquest.services.PlayerService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
@WebServlet(name = "RestartServlet", value = "/restart")
public class RestartServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        if (req.getParameter("choice").equals("11")) {
            resp.sendRedirect("gameStart");
            log.info("Game restarted");
        } else
        {
            req.getSession().invalidate();
            log.info("Session invalidate");
            new PlayerService().getInstance().setGamesPlayed(0);
            resp.sendRedirect("index.jsp");
        }
    }
}
