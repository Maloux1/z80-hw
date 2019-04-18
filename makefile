#from openclassrooms.com
COMP = z80asm
FLAGS = --verbose
CONVERT = bin2var

SRC = $(wildcard *.z80)
BIN = $(SRC:.z80=.bin)
EXE = $(SRC:.z80=.8xp)

all: asm

asm: ${SRC}
	@${COMP} ${FLAGS} --input ${SRC} --output ${BIN}
	@${CONVERT} ${BIN} ${EXE}

.PHONY: clean mrproper

clean : 
	@rm -f *.bin
	@rm -rf *~
	@echo "Nettoyé."

mrproper: clean
	@rm -f *.8xp
	@echo "C'est vide !"
