#!/bin/bash

kind create cluster --config cluster.yml
kubectl taint nodes -l app=mysql app=mysql:NoSchedule
helm install todoapp ./helm-chart
kubectl get all,cm,secret,ing -A > output.log

