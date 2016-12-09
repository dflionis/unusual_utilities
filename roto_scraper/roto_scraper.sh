#! /bin/bash
function print_sport {
  sport=$1
  if [ "$sport" != "mlb" ] && [ "$sport" != "nfl" ] && [ "$sport" != "nba" ] && [ "$sport" != "nhl" ]; then
    >&2 echo "The chosen sport is not whitelisted"
  else
    readarray -t array <<< "$(curl -s http://www.rotoworld.com/sports/$sport | grep topheadlines)"
    regex="$sport/[[:digit:]]+/(.*)\?ls"
    echo "===== $sport =====" 
    for line in "${array[@]}"
    do
      if [[ $line =~ $regex ]]
      then
        headline="${BASH_REMATCH[1]}"
        formatted_headline="${headline//-/ }" 
        echo "${formatted_headline}"
      else
        echo "$line doesn't match"
      fi
    done
  fi
}

while true;
  do
    clear;
    print_sport mlb;
    print_sport nfl;
    print_sport nhl;
    sleep 300;
done
