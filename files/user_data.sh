#!/bin/bash
set -e -x
wget -O /tmp/splunk-7.2.4.2-fb30470262e3-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.2.4.2&product=splunk&filename=splunk-7.2.4.2-fb30470262e3-linux-2.6-x86_64.rpm&wget=true'
rpm_path="/tmp/splunk-7.2.4.2-fb30470262e3-linux-2.6-x86_64.rpm"
echo $rpm_path
#sudo apt install rpm
sudo /usr/bin/rpm -ivh $rpm_path --nodeps
sleep 30
sudo -u splunk /opt/splunk/bin/splunk start --answer-yes --no-prompt --accept-license --seed-passwd newpassword
