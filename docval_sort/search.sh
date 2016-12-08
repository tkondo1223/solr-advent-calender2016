#!/bin/sh

#FILE=./perf_sort_query
FILE=./perf_sort_doc_val_query
while read line; do
    curl -kL $line -o /dev/null -w "%{time_total}" 2> /dev/null
    echo
done < $FILE
