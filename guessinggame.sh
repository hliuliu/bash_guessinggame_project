
# number of files in the current directory
num_files=$(ls | wc -l)


function check_guess {
  local guess=$1 # the guess is passed in as the first argument

  # extension: make sure the guess is a nonnegative integer
  if ! [[ $guess =~ ^[0-9]+$ ]]
  then
    echo "Please enter a nonnegative integer"
  elif [[ $guess -lt $num_files ]]
  then
    echo "Too low!"
  elif [[ $guess -gt $num_files ]]
  then
    echo "Too high!"
  else
    echo "Correct. Well done!"
  fi
}

answer=-1

while [[ $answer -ne $num_files ]]
do
  echo "Guess how many files are in the directory."
  read answer
  check_guess $answer
done
