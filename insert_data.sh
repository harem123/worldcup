#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
## boraa las bases de datos  antes de iniciar
#echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")

echo $($PSQL "TRUNCATE games,teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS

## boraa las bases de datos  antes de iniciar
#echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")

do
if [[ $YEAR != "year" ]]
# insert winner
  then
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert major
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      
    fi
  
# insert opponent 
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert major
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      
    fi
fi
done
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
#games insertion 
# get winner id 
do
  if [[ $YEAR != "year" ]]
  then
WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES($YEAR, '$ROUND', $W_GOALS, $O_GOALS, $WIN_ID, $OP_ID)")
  fi
done
