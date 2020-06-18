#!/bin/bash

touch temp/text.txt
echo "result of Testing:" > temp/text.txt
go test ./middleware >> temp/text.txt
echo "result of Benchmarks :" >> temp/text.txt
go test -bench=. ./middleware >> temp/text.txt
echo "result of Functional Testing:" >> temp/text.txt
go test ./test>> temp/text.txt
echo "result of Functional Benchmarks :" >> temp/text.txt
go test -bench=. ./test >> temp/text.txt
