PSQL="psql --username=postgres --dbname=worldcup -w -t --no-align -c"

echo $($PSQL "TRUNCATE TABLE games, teams;")

echo "dentro insert_data_test"

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
 if [[ $YEAR == "year" ]]; then
    continue
  fi

  # Verificar id WINNER
  TEAM_ID_WINNER="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  if [[ -z $TEAM_ID_WINNER ]]; then 
    INSERT_NAME_WINNER_RESULT="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
    if [[ $INSERT_NAME_WINNER_RESULT == "INSERT 0 1" ]]; then
      
      echo "Equipo ganador insertado: $TEAM_ID_WINNER $WINNER"
    fi
  fi  

  # Verificar id OPPONENT
  TEAM_ID_OPPONENT="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  if [[ -z $TEAM_ID_OPPONENT ]]; then
   INSERT_NAME_OPPONENT="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
   if [[ $INSERT_NAME_OPPONENT == "INSERT 0 1" ]]; then
    echo "Equipo OPPONENT insertado: $TEAM_ID_OPPONENT $OPPONENT"
   fi 
  fi

  TEAM_ID_WINNER="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  TEAM_ID_OPPONENT="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"

  INSERT_GAMES_RESULT="$($PSQL "INSERT INTO 
  games(year, round, winner_id, opponent_id, winner_goals, opponent_goals )
  VALUES($YEAR, '$ROUND', $TEAM_ID_WINNER, $TEAM_ID_OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS)")"


  if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]; then
    echo "Game insertado: $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS"
   fi
 

done