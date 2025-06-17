#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != "winner" ]]; 
  then # para no leer el encabezado
    # Verificar e insertar equipo ganador si no existe
    WINNER_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    if [[ -z $WINNER_NAME ]]; 
    then
      INSERT_WINNER_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_NAME == "INSERT 0 1" ]]; 
      then
        echo "Inserted into teams, $WINNER"
      fi
    fi
    # Verificar e insertar equipo oponente si no existe
    OPPONENT_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    if [[ -z $OPPONENT_NAME ]]; then
      INSERT_OPPONENT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT_NAME == "INSERT 0 1" ]]; then
        echo "Inserted into teams, $OPPONENT"
      fi
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]];
    then 
    # Insertar juego si no existe
    GAME_ID=$($PSQL "SELECT g.game_id FROM games g JOIN teams t ON g.winner_id = t.team_id WHERE g.year = $YEAR AND g.round = '$ROUND' AND t.name = '$WINNER';")
    if [[ -z $GAME_ID ]]; 
      then
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, winner_goals, opponent_id, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $WINNER_GOALS, $OPPONENT_ID, $OPPONENT_GOALS)")
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]; 
        then
        echo "Inserted into games, $WINNER $WINNER_GOALS - $OPPONENT $OPPONENT_GOALS"
        fi
      fi
     fi 

done