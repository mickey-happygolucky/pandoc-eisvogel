#!/bin/bash

readonly filename=$(readlink -f "${1}")
readonly basename=$(basename "${filename}")
readonly inputdir=$(dirname "${filename}")/

docker run --rm \
       --volume "$(pwd):/data" \
       --volume "${inputdir}:/input" \
       --user $(id -u):$(id -g) \
       pandoc-eisvogel \
       "/input/${basename}" \
       --filter pandoc-plantuml \
       --filter pandoc-ditaa \
       --filter pandoc-crossref \
       --metadata-file="/opt/pandoc/crossref_config.yaml" \
       --standalone \
       --data-dir=/opt/pandoc \
       --template eisvogel \
       --pdf-engine lualatex \
       -V lang=ja \
       -V luatexjapresetoptions=haranoaji \
       -V CJKmainfont=HaranoAjiGothic \
       -V caption-justification=centering \
       -N \
       --toc \
       -M listings \
       --listings \
       -H /opt/pandoc/header.tex \
       -V linkcolor=blue \
       -V table-use-row-colors=true \
       -V titlepage=true \
       -V toc-own-page=true \
       -V toc-title="目次" \
       -o ${basename%.*}.pdf
