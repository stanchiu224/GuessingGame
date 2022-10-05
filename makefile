README.md: guessinggame.sh
	echo "# Guessing Game Project for Unix Workbench" > README.md
	echo "Makefile was made on $(shell date)" >> README.md
	cat guessinggame.sh | wc -l >> README.md
