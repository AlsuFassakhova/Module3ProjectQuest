package org.javarush.module3projectquest.services;


import lombok.extern.slf4j.Slf4j;
import org.javarush.module3projectquest.model.Player;

import java.util.Random;

@Slf4j
public class PlayerService {
    private static Player player;

    public Player getInstance() {
        if (player == null) {
            player = new Player();
        }
        return player;
    }

    public void startNewGame(String name) {
        getInstance();
        log.info("New player has been created. Name: " + name);
        player.setName(name);
    }

    public boolean isAnswerCorrect(String answer) {
        log.info("Checking answer (scene 1)");
        String correctAnswer = "0";
        return correctAnswer.equals(answer);
    }

    public int rollTheDices() {
        log.info("Dices are rolling");
        Random random = new Random();
        return random.nextInt(1, 13);
    }
}

