#! /bin/bash
readarray -t movies < movies.txt

user_agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.92 Safari/537.36"
free_movie_text='Watch for \0\.00 with a Prime membership'

echo "Asking Amazon about your movies..."
echo "The following movies are free:"
echo "==============================="
free_movie_count="0"
for i in "${movies[@]}"
do
  count="$(curl -s -A $user_agent $i | egrep "$free_movie_text" | wc -l)"
  if [ $count -ne 0 ]
  then
    free_movie_count=$((free_movie_count+1))
    echo $i
  fi
done
echo "==============================="
echo "We found ${free_movie_count} free movies!"
