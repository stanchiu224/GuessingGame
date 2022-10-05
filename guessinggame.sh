# This script should have one function, one loop, and one if

countfiles ()
{ # put the number of files in the working directory to count
    count=$(ls -a | wc -l)
}

countfiles

while true; do
    echo "Enter a number to guess how many files are in the working directory."
    read guess
    if [[ $guess -eq $count ]]; then
        echo "Bingo!!!"
        break
    fi
    if [[ $guess -lt $count ]]; then
        echo "There are more files than $guess."
    fi
    if [[ $guess -gt $count ]]; then
        echo "There are fewer files than $guess."
    fi
    echo
done
