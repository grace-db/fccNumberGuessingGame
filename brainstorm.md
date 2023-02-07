# Brainstorming (for number_guessing_game)
PLAYER TABLE: 
- player_id (SERIAL, PRIMARY KEY)
- username (VARCHAR(22), UNIQUE, NOT NULL)
- games_played (INT, DEFAULT 0)
- best_game (INT, DEFAULT 0)

GAME TABLE:
- game_id (SERIAL, PRIMARY KEY)
- player_id (FOREIGN KEY, NOT NULL)
- number_of_guesses (INT)
- secret_number (INT)

We could get a random number through the 'random()' function for each time a new game is started. The random number will be inserted into the database slot for 'answer', and you can check if the player's guess matches that number. And it will keep track of the number of guesses, updating that as well.
