#!/usr/bin/env bash

# HTML-Daten ersetzen
# $1  HTML-Datei, die geändert werden soll
# $2  Such-Term
# $3  Eretzungs-Term
function change_html {
  html=$(sed -e "s/\(${2}\)/${3}/g" $1)
  echo "${html}" > $1
}

# Aufräumen
rm -rf rubocop/*
rm -rf rubycritic/*

# Code Analysen durchführen
rubocop -R -f html -o rubocop/index.html

haml-lint > rubocop/haml-lint.txt

OLD_LC_ALL=$LC_ALL
OLD_LANG=$LANG
OLD_LANGUAGE=$LANGUAGE

export LC_ALL=C.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

rubycritic -p /gem/rubycritic -f html --no-browser /gem/lib

export LC_ALL=$OLD_LC_ALL
export LANG=$OLD_LANG
export LANGUAGE=$OLD_LANGUAGE

# HTML-Dateien zusammenfassen
mkdir -p rubycritic/lib/rlx_google_api
mv lib/*.html rubycritic/lib
mv lib/rlx_google_api/*.html rubycritic/lib/rlx_google_api

# HTML-Dateien anpassen
change_html rubycritic/code_index.html "href=\\\"..\/" "href=\\\""
change_html rubycritic/smells_index.html "href=\\\"..\/" "href=\\\""

for file in `find rubycritic/lib -type f -name '*.html'`
do
  change_html $file "..\/rubycritic\/" "..\/"
done
