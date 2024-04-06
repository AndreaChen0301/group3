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
if [[ -e "shakespeare.txt" ]]; then
    echo "shakespeare.txt exists"
else 
    cat shakespeare * >  shakespeare.txt
    echo "shakespeare.txt created"
fi
if [[ -e "xaa" ]]; then
    echo "shakespeare already split into 5"
else
    split -n 5 shakespeare.txt
    echo "shakespeare.txt split into 5 chunks"
fi

