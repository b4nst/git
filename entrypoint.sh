#!/bin/sh
set -e

if git help -a | grep -E "^   [a-z]+[a-z0-9-]+" -o | tr -d ' ' | grep -x $1 &> /dev/null; then
  git $@
else
  $@
fi