#!/bin/bash

__log=/tmp/popo-rssh.log

__rrsh4port4pport () {
    target_port=${1}
    proxy_port=${2}
    target_host=localhost
    proxy_user=ec2-user
    proxy_host=zapazap.net
    pem=~/.ssh/arf.pem

    opt1="-o UserKnownHostsFile=/dev/null"
    opt2="-o StrictHostKeychecking=no"

    #echo }} ssh -fN -R ${proxy_port}:${target_host}:${target_port} -i ${pem} ${proxy_user}@${proxy_host}
    #        ssh -N -R ${proxy_port}:${target_host}:${target_port} -i ${pem} ${proxy_user}@${proxy_host}
    echo }} ssh ${op1} ${opt2} -N -R ${proxy_port}:${target_host}:${target_port} -i ${pem} ${proxy_user}@${proxy_host}
            ssh ${op1} ${opt2} -N -R ${proxy_port}:${target_host}:${target_port} -i ${pem} ${proxy_user}@${proxy_host}
    return $?
}

while true; do
    echo }} __rrsh4port4pport ${1:-22} ${2:-1965} >> ${__log}
            __rrsh4port4pport ${1:-22} ${2:-1965} 2>> ${__log}
    echo fail. retrying in ten sec. >> ${__log}
    echo >> ${__log}
    sleep 10
done
