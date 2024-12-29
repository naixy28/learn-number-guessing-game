#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

check_user() {
  echo -e "Enter your username:"
  read USERNAME

  if [[ -n $USERNAME ]]
  then
    # check if user exist
    USER_EXIST=$($PSQL "select user_id from users where name='$USERNAME'")
    if [[ -n $USER_EXIST ]]
    then
      # if exist, get username, best_game and game_played
      GAME_PLAYED=$($PSQL "select count(*) from games where user_id='$USER_EXIST'")
      BEST_GAME=$($PSQL "select min(try_count) from games where user_id='$USER_EXIST'")
      echo -e "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
    else
      # if not exist, print
      echo -e "Welcome, $USERNAME! It looks like this is your first time here."
    fi
    # do guess game
    TRY=0
    guess_number
    TRY=$?
    # if user not exist, insert into users table
    if [[ -n $USER_EXIST ]]
    then
      INSERT_RESULT=$($PSQL "insert into games(try_count, user_id) values($TRY, $USER_EXIST)")
    else
      USER_RESULT=$($PSQL "insert into users (name) values ('$USERNAME')")
      if [[ -n $USER_RESULT ]]
      then
        USER_ID=$($PSQL "select user_id from users where name='$USERNAME'")
        # echo $USER_ID
        INSERT_RESULT=$($PSQL "insert into games(try_count, user_id) values($TRY, $USER_ID)")
      fi
    fi
  else
    echo "You must input a username!"
    check_user
  fi
}
guess_number() {
  RANDOM_NUMBER=$(( (RANDOM % 1000) + 1 ))
  echo "Guess the secret number between 1 and 1000:"
  INPUT=0
  COUNT=0
  while [[ INPUT -ne $RANDOM_NUMBER ]]
  do
    read INPUT
    COUNT=$(( COUNT + 1 ))
    if [[ ! "$INPUT" =~ ^-?[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    elif [[ $INPUT -lt $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    elif [[ $INPUT -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    fi
  done
  echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
  return $COUNT
}

check_user