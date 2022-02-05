#!/bin/bash

# nodes=$(kubectl get nodes -o name)
nodes=("purple-ice" "red-ice" "black-ice")

for node in ${nodes[@]}
do
    echo "==== Shut down $node ===="
    ssh -T $node "echo "$1" | sudo -S shutdown -c"
