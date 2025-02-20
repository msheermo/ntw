!#/bin/bash

oc project gpo-ns-app 

oc new-app --image=quay.io/openshiftroadshow/parksmap:latest --name=parksmap -l app=rws-demo,component=parksmap,role=frontend

oc create route edge parksmap --service=parksmap

oc policy add-role-to-user view -z default
