echo "Give website or ip:"
read address
whois $(traceroute -w 1 "$address" | tr -s ' ' | cut -d " " -f3 | cut -d "(" -f2 | cut -d ")" -f1)\
| tr -s ' '| grep -e Country -e OrgName -e country -e org-name | cut -d ":" -f2
