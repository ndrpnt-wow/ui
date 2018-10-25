while IFS="" read -r p || [ -n "$p" ]; do; ptouch $p; done < test.txt
egrep -i "^sound/" < listfile.txt > test.txt
