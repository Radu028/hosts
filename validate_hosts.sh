#!/bin/bash
validate_ip() {
	local host=$1
	local ip=$2
	local dns_server=$3
	nslookup $host $dns_server | grep -q "$ip" && echo "Valid: $host - $ip" || echo "Invalid: $host - $ip"
}

validate_ip "localhost" "127.0.0.1" "8.8.8.8"
