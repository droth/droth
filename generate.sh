#!/bin/sh
# Nico Schottelius, 2010-06-17

#set -x
dirs="numerik-1 numerik-2"

for dir in $dirs; do
   echo "\section{$dir}"
   for tex in $dir/*.tex; do
      name="${tex%.tex}"
      name="${name##$dir/}"
      echo "\subsection{$name}"
      echo "\include{$tex}"
   done
done
