README.md:
	touch README.md
	echo "##The title of the project" >> README.md
	echo "\nThe **date** and time at which make was run : " >> README.md
	date >> README.md
	echo "\nThe **number of lines** of code contained in guessinggame.sh : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md 
