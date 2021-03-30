.PHONY: all

cv.pdf: cv cv/main.tex cv/developercv.cls
	@texi2pdf \
		--quiet \
		--tidy \
		--build-dir=cv/main.t2d \
		-I cv \
		--output cv.pdf \
		cv/main.tex

all: | cv.pdf
