#!/bin/bash
current_dir= "$PWD"
if [[ -e "shakespeare.tar" ]]; then
    echo "shakespeare.tar exists"
else
    wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar
    echo "shakespeare tar file downloaded"
fi
if [[ -e "shakespeare" ]]; then
    echo "shakespeare exists"
else
    tar -xf shakespeare.tar
    echo "shakespeare.tar created"
fi
for dir in shakespeare/comedies shakespeare/histories shakespeare/poetry shakespeare/tragedies; do
    cat "$dir"/*
done > shakespeare.txt
echo "shakespeare.txt created"
if [[ -e "xaa" ]]; then
    echo "shakespeare already split into 5"
else
    split -n 5 shakespeare.txt
    echo "shakespeare.txt split into 5 chunks"
fi
