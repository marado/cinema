#!/bin/bash
echo "Filmes em Exibicao:"
echo ""
while read -r line; do printf "$line\n"; done < <(wget http://www.cinecartaz.publico.pt -o /dev/null -O - |grep value=\"/filme/|cut -d\> -f2-|cut -d\< -f1|sed "s/\&#x/\\\U/g"|sed "s/;/\\\0/g"| sort -u)
