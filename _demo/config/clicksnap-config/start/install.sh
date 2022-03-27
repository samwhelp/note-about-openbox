#!/usr/bin/env bash

##
## * https://git.maboxlinux.org/napcok/clicksnap
## * https://github.com/napcok/clicksnap
##

wget -c 'https://git.maboxlinux.org/napcok/clicksnap/raw/branch/master/clicksnap'
chmod 755 clicksnap

sudo cp clicksnap /usr/local/bin/clicksnap
