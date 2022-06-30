# Bowling Kata

This project contains a starter setup for a TDD driven bowling game kata. There is a Game.swift class that contains a protocol and an empty XCUnit Test file to get you started.

## Bowling Rules

*  The game consists of Ten frames, each player has two opportunities to knock pins in each frame.
*  Spare: If player knocks 10 pins in two tries(in the same frame), this current frame will get a bonus score. The bonus is the amount of knocked pins the next time the player rolls, for example.
*  Strike: If a player knocks 10 pins on his first try, current frame will get a Strike bonus which adds score from the next two rolls.
*  If a player rolls a Spare or Strike in the tenth frame they will get an extra bonus to roll again, but no more than three rolls in total in the tenth frame.
* A perfect game score is 300 (12 Strikes).

## Task

We'd like you to write the logic for a game of bowling based on the rules outlined above. The only mandates are that at least one frame must score a spare and at least one must score a strike.
We're interested in seeing the final score at the end of a game of bowling.

**N.B.** We're focusing on the TDD approach to building out the logic for a game of bowling.

### Useful links
Feel free to use [this](https://www.bowlinggenius.com/) bowling game score calculator to validate your scores.

Good luck!
