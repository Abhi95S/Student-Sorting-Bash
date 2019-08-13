#!/bin/bash
echo "Roll number	Name" > students\ list.xls;(head -n $(($(sed -n '/Mast/=' Students.txt)-1)) > g.txt;cat > btemp.txt) < Students.txt;sed 's/Mast //' btemp.txt > b.txt;rm btemp.txt;sort -t " " -k 1 g.txt > sorted.txt;sort b.txt >> sorted.txt;awk '{print NR "\t" $s}' sorted.txt | tr -s ' ' ' ' | sed 's/^ //g' >> students\ list.xls;rm g.txt;rm b.txt;rm sorted.txt
