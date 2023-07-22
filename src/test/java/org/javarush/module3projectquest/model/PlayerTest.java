package org.javarush.module3projectquest.model;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class PlayerTest {
    Player player = new Player();


    @Test
    @DisplayName("gamesPlayedIncrementTest")
    void gamesPlayedIncrementTest() {
        player.setGamesPlayed(5);
        player.gamesPlayedIncrement();
        assertEquals(6, player.getGamesPlayed());
    }

}