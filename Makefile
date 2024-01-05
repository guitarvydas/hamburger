LIBSRC=libsrc
ODIN_FLAGS ?= -debug -o:none
0D=0d/odin/0d/*.odin 0d/odin/std/*.odin
D2JDIR=0d/odin/das2json
D2J=$(D2JDIR)/das2json

dev: clean run

run: hamburger
	./hamburger main hamburger.drawio $(LIBSRC)/transpile.drawio

hamburger: $(D2J) hamburger.drawio
	$(D2J) hamburger.drawio
	$(D2J) $(LIBSRC)/transpile.drawio
	odin build . $(ODIN_FLAGS)

$(D2J):
	echo 'Please remake das2json'

$(0D):
	echo 'Please remake 0D'

clean:
	rm -rf hamburger hamburger.dSYM
