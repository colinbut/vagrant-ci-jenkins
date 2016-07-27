#!/usr/bin/env bash

if [ ! -f /etc/init.d/jenkins ];
then
	echo "Installing Jenkins"

	# URL: http://localhost:6060
	# Home: /var/lib/jenkins
	# Start/Stop: /etc/init.d/jenkins
	# Config: /etc/default/jenkins
	# Jenkins log: /var/log/jenkins/jenkins.log
	wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
	sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
	apt-get update
	apt-get install -y jenkins

	sed -i 's/8080/6060/g' /etc/default/jenkins
	/etc/init.d/jenkins restart
else
	echo "Jenkins already installed - not Installing"
fi