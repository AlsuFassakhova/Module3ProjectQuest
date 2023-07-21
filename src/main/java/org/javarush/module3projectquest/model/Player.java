package org.javarush.module3projectquest.model;


import lombok.*;
import lombok.extern.slf4j.Slf4j;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@Slf4j
public class Player {
    private String name;
    private int gamesPlayed;

    public Player() {
        this.name = "";
        this.gamesPlayed = 0;
    }

    public void gamesPlayedIncrement() {
        log.info("Games played incremented: " + (gamesPlayed + 1));
        gamesPlayed++;
    }
}