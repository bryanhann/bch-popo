#!/bin/sh
export_ () { export $1=$2 ; }
export_ BCH_APP_POPO_target_host    localhost
export_ BCH_APP_POPO_proxy_user     ec2-user
export_ BCH_APP_POPO_proxy_host     zapazap.net
export_ BCH_APP_POPO_pem_file       ${HOME}/.ssh/arf.pem
export_ BCH_APP_POPO_proxy          ec2-user@zapazap.net
