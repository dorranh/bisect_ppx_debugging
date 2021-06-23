all: build test

build: build-ocaml

build-ocaml:
	dune build @install

test: ocaml-src
	dune runtest .

test-coverage:
	dune runtest --instrument-with bisect_ppx --force .
	bisect-ppx-report html
	bisect-ppx-report summary

clean:
	$(RM) -r _build _coverage

distclean: clean

.PHONY: all build build-ocaml test test-coverage clean distclean
