#<<S>> is Start <<E>> is End
echo "Port Scanning Automated tool"
echo "enter site to scan:"
# read site
site="www.google.com"

#<<S>> getting ip from site url 
content=$(nslookup $site | grep "Address: ")
ip=$(echo $content | grep -oP '(?<=Address: ).*(?=Address:)')
echo "URL: " $site
echo "IP: " $ip
#<<E>>