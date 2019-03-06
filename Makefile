
all: xml

xml.tab.c xml.tab.h: xml.y
	bison -d xml.y

lex.yy.c: xml.l xml.tab.h
	flex xml.l

xml: lex.yy.c xml.tab.h xml.tab.c
	gcc xml.tab.c lex.yy.c -o xml

clean:
	@rm -f xml xml.tab.c xml.tab.h lex.yy.c xml.c

