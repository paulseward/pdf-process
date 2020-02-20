#!/bin/bash
#
# Use Open Office to reduce filesize, as the default optimisations are better than my scanner
#

INPUT_DIR=.
OUTPUT_DIR=./out

find ${INPUT_DIR} -name *.pdf -print | xargs -I{} soffice --headless --convert-to pdf {} --outdir ${OUTPUT_DIR}
