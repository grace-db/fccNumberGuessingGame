#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"

MAIN_MENU() {
  echo -e "\n~~~ Number Guessing Game ~~~\n"

  # get player info
  echo "Enter your username:"
  read USERNAME

  PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
  
  # if player exists
  if [[ $PLAYER_ID ]]
  then
    # get player info
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM players WHERE player_id=$PLAYER_ID")
    BEST_GAME=$($PSQL "SELECT best_game FROM players WHERE player_id=$PLAYER_ID")

    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  else # if player doesn't exist
    # insert new player
    INSERT_NEW_PLAYER=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
    PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")

    # welcome new player
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  fi

  PLAY_GAME
}

PLAY_GAME() {
  # prepare game
  ANSWER=$(( 1 + $RANDOM % 1000 ))

  # start game
  echo -e "\nGuess the secret number between 1 and 1000:"
  TRACK_GUESS=0

  # track number of guesses
  COUNT=0

  # guessing game
  while [[ $TRACK_GUESS = 0 ]]
  do
    read GUESS

    # if not a number
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    else
      # if correct
      if [[ $GUESS = $ANSWER ]]
      then
        (( COUNT++ ))
        echo -e "\nYou guessed it in $COUNT tries. The secret number was $ANSWER. Nice job!"

        # insert results
        INSERT_GAME_RESULTS=$($PSQL "INSERT INTO games(player_id, number_of_guesses, secret_number) VALUES($PLAYER_ID, $COUNT, $ANSWER)")
        PLAYED=$(( GAMES_PLAYED + 1 ))
        UPDATE_PLAYER_STATS=$($PSQL "UPDATE players SET games_played=$PLAYED WHERE player_id=$PLAYER_ID")

        # if new top score
        if [[ $COUNT < $BEST_GAME || -z $BEST_GAME ]]
        then
          INSERT_NEW_BEST=$($PSQL "UPDATE players SET best_game=$COUNT WHERE player_id=$PLAYER_ID")
        else
          break
        fi
        TRACK_GUESS=1
      # if lower
      elif [[ $GUESS > $ANSWER ]]
      then
        (( COUNT++ ))
        echo -e "\nIt's lower than that, guess again:"
      # if higher
      else
        (( COUNT++ ))
        echo -e "\nIt's higher than that, guess again:"
      fi
    fi
  done
}

MAIN_MENU
