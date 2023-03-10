#!/bin/bash
oc new-project tektutor
oc create deployment nginx --image=quay.io/wdovey/nginx:latest
oc scale deploy/nginx --replicas=3
oc expose deploy/nginx --port=8080

