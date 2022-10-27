#!/bin/bash

## Author: Emmanuel
## Date: 10/25/2022

    yum install -y wget

    if [ $? -ne 0]
    then
        echo "Installation of wget failed"
        exit 2
    else
        yum install -y net-utils
        if [ $? -ne 0]
        then
            echo "Installation of net-utils failed"
            exit 2
        else
            yum install -y sysstat
            if [ $? -ne 0]
            then
                echo "Installation of sysstat failed"
                exit 2
            else
                yum install -y finger
                if [ $? -ne 0]
                then
                    echo "Installation of finger failed"
                    exit 2
                else
                    yum install -y gcc
                    if [ $? -ne 0]
                    then
                        echo "Installation of gcc failed"
                        exit 2
                    else
                        yum install -y make
                        if [ $? -ne 0]
                        then
                            echo "Installation of make failed"
                            exit 2
                        else
                            echo "all the packages are installed"
                        fi
                    fi
                fi
            fi
        fi                    
    fi