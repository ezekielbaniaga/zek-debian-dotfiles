#!/bin/bash

#
# Download online docs, indexof pages, etc.
# See `man wget` for your use case
#
wget -d -r -p -c -np "https://docs.oracle.com/javaee/5/tutorial/doc/"

