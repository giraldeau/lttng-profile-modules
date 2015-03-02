#!/bin/bash

sudo rmmod lttngprofile 2> /dev/null

set -e

sudo dmesg -c > /dev/null
sudo modprobe lttngprofile
sudo dmesg -c
