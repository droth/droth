#!/bin/sh
# Nico Schottelius, 2010-06-17

dirs="$@"

for dir in $dirs; do
   echo "\chapter{$dir}"
   for tex in $dir/*.tex; do
      include="${tex%.tex}"
      name="${include##$dir/}"
      echo "\section{$name}"
      echo "\include{$include}"
   done
done
