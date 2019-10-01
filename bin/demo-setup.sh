#!/bin/bash
                                              
eval $(minishift docker-env)

oc delete project quarkus-knative

eval $(minishift oc-env) 

oc login $(minishift ip):8443 -u admin -p admin

oc new-project quarkus-knative --display-name='Quarkus on Knative Demo'
oc adm policy add-scc-to-user privileged -z default 
oc adm policy add-scc-to-user anyuid -z default
oc label namespace quarkus-knative istio-injection=enabled
