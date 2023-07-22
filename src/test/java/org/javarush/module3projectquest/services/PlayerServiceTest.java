package org.javarush.module3projectquest.services;

import org.javarush.module3projectquest.model.Player;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

class PlayerServiceTest {
    PlayerService playerService = new PlayerService();

    @Test
    @DisplayName("StartNewGameTest")
    void startNewGame() {

    }

    @Test
    @DisplayName("IsAnswerTrueTest")
    void isAnswerTrueTest() {
        assertTrue(playerService.isAnswerCorrect("0"));
    }


    @Test
    @DisplayName("IsAnswerFalseTest")
    void isAnswerFalseTest() {
        assertFalse(playerService.isAnswerCorrect("6"));
    }

}