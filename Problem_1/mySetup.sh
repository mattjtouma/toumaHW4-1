\#!/bin/bash

# CPE 522 HW 4 Problem 1
# Matthew J. Touma
# 10/5/2021

# Description:
# This script changes the BB CPU frequency to 600 MHz,
# displays the CPU info, displays the current working
# directory, and displays the number of items in the 
# current directory.
#
# Usage:
# After setting the PATH variable to include ~/CPE522/homeworks/hw_4/problem_1/,
# just type mySetup.sh in the command line from any location.
# This script takes no arguments.
#
# Example invocation:
# debian@beaglebone:~$ mySetup.sh

# a.
# set the BB CPU frequency to 600 MHz
sudo cpufreq-set -f 600MHz

# b.
# display BB CPU info
cpufreq-info

# c.
# create a variable
location=/home/debian

# d.
# display the value of the variable
echo -e The \"location\" variable = $location

# e.
# get the number of items in the
# current working directory and 
# display them to the screen.
items=$(ls | sort | wc -l)

# display the result
echo Number of files in current working directory: $items
