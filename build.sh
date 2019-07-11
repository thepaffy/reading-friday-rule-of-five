#!/bin/bash

pandoc rvalue-references_move-semantics.md rule-of-five.md metadata.yaml -o reading-friday-rule-of-five.pdf --from markdown --to beamer --template eisvogel.tex --listings
