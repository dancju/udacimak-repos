#!/bin/sh

for item in meta/*/
do
  udacimak render ./"$item" -t ./data/ -s
done
