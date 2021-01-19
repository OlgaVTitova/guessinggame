#!/bin/bash bash
# File: guessinggame.sh

function guessquestion {
	echo "How many files are in current directory?"
	read response
	correctfiles=$(ls -1 | wc -l)
}

guessquestion

while [[ $response -ne $correctfiles ]]
do
	if [[ $response -gt $correctfiles ]]
	then
		echo "Your guess is too high, try again"
	elif [[ $response -lt $correctfiles ]]
	then
		echo "Your guess is too low, try again"
	fi
	guessquestion
done

echo "Your guess is the right number!"
echo "End"
