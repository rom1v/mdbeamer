.PHONY: clean withversion run

INPUT=slides.md
OUTPUT=slides.pdf
DEP=$(wildcard *.sty *.jpg *.png)
THEME=Custom

$(OUTPUT): $(INPUT) $(DEP)
	pandoc -st beamer -V theme:$(THEME) -V lang:fr-FR $(INPUT) -o $(OUTPUT)

withversion: $(INPUT) $(DEP)
	<$(INPUT) ./inject_version |\
		pandoc -st beamer -V theme:$(THEME) -V lang:fr-FR -o $(OUTPUT)

run: $(OUTPUT)
	impressive -t Crossfade --nologo $(OUTPUT)

clean:
	rm -f $(OUTPUT)
