#!/bin/bash
start="2026-04-09"
end="2026-04-21"

current="$start"

while [ "$current" != "$(date -I -d "$end + 1 day")" ]
do
  echo "// DSA practice on $current" >> progress.cpp
  git add progress.cpp

  GIT_AUTHOR_DATE="$current 12:00:00" \
  GIT_COMMITTER_DATE="$current 12:00:00" \
  git commit -m "DSA practice $current"

  current=$(date -I -d "$current + 1 day")
done