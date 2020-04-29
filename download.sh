#!/bin/sh

cd meta
courses="*/"
echo "Select a course to download:"
select course in $courses; do
  if [ -z "$course" ]; then
    echo "Bad input."
  else
    cd ..
    udacimak render meta/"$course" -t ./data/ -s
  fi
  break
done
