#!/bin/bash
#
# Use Open Office to reduce filesize, as the default optimisations are better than my scanner
#

function usage {
  echo "Usage:"
  echo "$0 [options]"
  echo
  echo "  -i <input_path>   Path to directory containing input files, default is '.'"
  echo "  -o <output_path>  Path to directory to write output files, default is './out/'"
  exit
}

INPUT_DIR=.
OUTPUT_DIR=./out

while getopts ":hi:o:" opt; do
  case ${opt} in
    h ) # Help
      usage
      ;;
    i ) # input_path
      INPUT_DIR=$OPTARG
      ;;
    o ) # output_path
      OUTPUT_DIR=$OPTARG
      ;;
    : )
      echo "invalid option: $OPTARG requires an argument" 1>&2
      usage
      ;;
    \? )
      echo "Invalid Option: -$OPTARG" 1>&2
      usage
      ;;
  esac
done

# Create the output directory if it doesn't exist
if [ ! -e "${OUTPUT_DIR}" ]; then
  echo "Output directory doesn't exist - creating as: '${OUTPUT_DIR}'"
  mkdir -p "${OUTPUT_DIR}"
fi

# Find PDF files under the specified input directory, and process them
find "${INPUT_DIR}" -name "*.pdf" -not -path "${OUTPUT_DIR}/*" -print0 | xargs --null -I{} soffice --headless --convert-to pdf {} --outdir "${OUTPUT_DIR}"
