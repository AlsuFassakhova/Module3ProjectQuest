package org.javarush.module3projectquest.services;

import org.javarush.module3projectquest.model.Player;

import java.util.Random;


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
        player.setName(name);
    }

    public boolean isAnswerCorrect(String answer) {
        String wrightAnswer = "0";
        return wrightAnswer.equals(answer);
    }

    public int rollTheDice() {
        Random random = new Random();
        return random.nextInt(1, 13);
    }
}

