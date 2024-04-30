#!/bin/bash
echo -e "Enter your username:"
read USERNAME

SECRET_NUMBER=$((1 + $RANDOM % 1000))
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#TRUNCATE_RESULT=$($PSQL "truncate users, games")

USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  USER_INSERTED_RESULT=$($PSQL "insert into users(username) values('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else 
  GAMES_RESULT=$($PSQL "select count(*) games_played, min(tries) best_game from games where user_id=$USER_ID")
  if [[ -z $GAMES_RESULT ]]
  then 
    GAMES_PLAYED=0
    BEST_GAME=0
  else
    IFS='|' read -r GAMES_PLAYED BEST_GAME <<< $GAMES_RESULT
  fi
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
NUMBER_OF_GUESSES=0;
GAME_INSERTED_RESULT=$($PSQL "insert into games(user_id, number_to_guess) values ($USER_ID, $SECRET_NUMBER)")
GAME_ID=$($PSQL "select max(game_id) game_id from games where user_id=$USER_ID")

PLAY(){
  if ! [[ $NUMBER_GUESSED =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read NUMBER_GUESSED 
    PLAY
  else
    ((NUMBER_OF_GUESSES++))
    if [[ $NUMBER_GUESSED -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      read NUMBER_GUESSED 
      PLAY
    elif [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read NUMBER_GUESSED 
      PLAY
    else
      
      UPDATE_TRIES=$($PSQL "update games set tries=$NUMBER_OF_GUESSES where user_id=$USER_ID and game_id=$GAME_ID")
      
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      
    fi
  fi
}

echo "Guess the secret number between 1 and 1000:"
read NUMBER_GUESSED
PLAY 