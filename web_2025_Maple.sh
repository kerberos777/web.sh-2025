#!/bin/bash
#######color code########
red="31m"      # Error message
green="32m"    # Success message
yellow="33m"   # Warning message
blue="36m"     # Info message
function blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
function green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
function red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
function yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
#########################
green "======================="
yellow "設置偽裝站"
green "======================="

	rm -rf /usr/share/nginx/html/*
	rm -rf ./web2025_maple
	rm -rf ./maple.watch-master
	mkdir web2025_maple
	cd web2025_maple
	wget https://github.com/kerberos777/maple.watch/archive/refs/heads/master.zip
	unzip master.zip
    cd maple.watch-master
	wget https://raw.githubusercontent.com/kerberos777/web.sh-2025/refs/heads/main/index.html
##	wget https://github.com/atrandys/v2ray-ws-tls/raw/master/web.zip
##	unzip web.zip
##	wget https://raw.githubusercontent.com/kerberos777/web.sh/master/index.html
	cp -f index.html.1 index.html
##	cd ..
	cp -a ./* /usr/share/nginx/html
systemctl restart nginx.service
    red "done!"
