#!/bin/bash
set -e -x
#wget -O splunk-7.1.1-8f0ead9ec3db-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.1.1&product=splunk&filename=splunk-7.1.1-    8f0ead9ec3db-linux-2.6-x86_64.rpm&wget=true'
#rpm -i  splunk-7.1.1-8f0ead9ec3db-linux-2.6-x86_64.rpm
#rpm -i splunk-7.3.0-657388c7a488-linux-2.6-x86_64.rpm 
wget -O splunk-7.2.4.2-fb30470262e3-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.2.4.2&product=splunk&filename=splunk-7.2.4.2-fb30470262e3-linux-2.6-x86_64.rpm&wget=true'
sudo apt install splunk-7.3.0-657388c7a488-linux-2.6-x86_64.rpm 
sleep 30
sudo -u splunk /opt/splunk/bin/splunk start --answer-yes --no-prompt --accept-license --seed-passwd newpassword
