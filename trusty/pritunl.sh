#!/bin/bash
sudo tee -a /etc/apt/sources.list.d/mongodb-org-3.2.list << EOF
deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse
EOF

sudo tee -a /etc/apt/sources.list.d/pritunl.list << EOF
deb http://repo.pritunl.com/stable/apt trusty main
EOF

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 42F3E95A2C4F08279C4960ADD68FA50FEA312927
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo apt-get update
sudo apt-get --assume-yes install pritunl mongodb-org
sudo service pritunl start
