#!/bin/sh

# Ukaz jak bude vypadat ve sbirce priklad, ktery jsem napsal.

rm -f single.pdf
make ARGS="$1" single.pdf && evince single.pdf 
