echo -n $(cat /etc/passwd | grep -v "^#" | awk "NR % 2 == 0" | grep -Eo "^[^:]+" | tac | sort -r | awk "NR == $FT_LINE1, NR == $FT_LINE2" | xargs echo | sed "s/ /, /g" ).
