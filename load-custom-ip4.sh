#!/bin/bash
firewall-cmd --permanent --ipset=geoip-blacklist-ip4 --add-entries-from-file=custom-ip4.block
firewall-cmd --reload
firewall-cmd --permanent --ipset=geoip-blacklist-ip4 --get-entries | wc -l
