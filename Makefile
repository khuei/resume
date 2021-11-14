.POSIX:

CC = xelatex
SRC_DIR = $(shell pwd)
CV_DIR = cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: $(foreach x, resume, $x.pdf)

resume.pdf: $(SRC_DIR)/resume.tex $(CV_SRCS)
	$(CC) -output-directory=$(SRC_DIR) $<

clean:
	rm -rf $(SRC_DIR)/*.pdf

.PHONY: all resume.pdf clean
