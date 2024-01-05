# Example of creating macros for non-Lisp languages.

This is a nonsensical example, not meant for production, but meant for illustrating the technique.

The main grammar is only 5 lines long. The semantic code, which is used alongside the grammar is only 4 lines long.

# Usage
make

# Expected Output

make
rm -rf hamburger hamburger.dSYM
0d/odin/das2json/das2json hamburger.drawio
0d/odin/das2json/das2json libsrc/transpile.drawio
odin build . -debug -o:none
ld: warning: ignoring duplicate libraries: '-lSystem'
./hamburger main hamburger.drawio libsrc/transpile.drawio

probe <nil>.main.? A◦4: ⌜a b c⎨
kitchen.order("hamburger");
⎬d e f⌝ len=45


probe <nil>.main.? B◦3: ⌜a b c
kitchen.order("hamburger");
d e f⌝ len=39

a b c
kitchen.order("hamburger");
d e f

The actual output is the last 3 lines.  The other stuff, prefixed by "probe" has been included to show the generated intermediate code. See the source code by opening `hamburger.drawio` (the source is written in a DPL - Diagrammatic Programming Language). Supporting code, written for this example in Odin, can be found in `main.odin`, `0d/*` and `libsrc/*`. You don't need to understand `0d/*` and `librsrc/*` unless you want to further dig into details (this would be like looking at the source code for a compiler).
