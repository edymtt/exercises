#!/bin/sh

bc -q large_number_input.txt > largenumber.txt
sed -i -e 's:\\:\\newline:' largenumber.txt
