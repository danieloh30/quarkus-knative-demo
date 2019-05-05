#!/bin/bash

eval $(minishift oc-env)                                               
eval $(minishift docker-env)

oc login $(minishift ip):8443 -u admin -p admin

oc delete project  quarkus-knative

oc new-project quarkus-knative --display-name='Quarkus on Knative Demo'
oc adm policy add-scc-to-user privileged -z default 
oc adm policy add-scc-to-user anyuid -z default

