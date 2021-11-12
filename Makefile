.POSIX:

CC = xelatex
SRC_DIR = $(shell pwd)
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

all: $(foreach x, resume, $x.pdf)

resume.pdf: $(SRC_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(SRC_DIR) $<

clean:
	rm -rf $(SRC_DIR)/*.pdf

.PHONY: build

