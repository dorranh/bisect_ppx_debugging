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
	$(RM) -r _build

distclean: clean

.PHONY: all build ocaml-src build-ocaml generate-ligo build-ligo tests clean indent spec docs distclean watch-spec view-spec
