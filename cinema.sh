#!/bin/bash
echo "Filmes em Exibicao:"
echo ""
wget http://www.cinecartaz.publico.pt -o /dev/null -O - |grep Exibi -A100|grep "#lista-filmes" -B100|grep /Filme|cut -d= -f3|cut -d\> -f2|cut -d \< -f1

