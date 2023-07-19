package org.javarush.module3projectquest.model;


import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Player {
    private String name;
    private int gamesPlayed;

    public Player() {
        this.name = "";
        this.gamesPlayed = 1;
    }

    public void gamesPlayedIncrement() {
        gamesPlayed++;
    }
}