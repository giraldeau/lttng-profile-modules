#!/bin/bash

sudo echo Installing LTTng-profile module...

set -e

make
sudo make modules_install
sudo depmod -a

sudo ./lttngprofile-start.sh
