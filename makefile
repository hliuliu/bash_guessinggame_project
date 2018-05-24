
all: README.md

README.md:
	echo "# Directory Guessing Game" > README.md
	echo "## Current Date and Time: $(shell date)" >> README.md
	echo "The program has $(shell cat guessinggame.sh | wc -l) lines of code." >> README.md


clean:
	rm README.md
