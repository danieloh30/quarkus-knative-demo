#!/bin/bash
set -e
 
export IP_ADDRESS=$(minishift ip)
export SERVICE_NODEPORT=$(oc get svc istio-ingressgateway -n istio-system -o 'jsonpath={.spec.ports[?(@.port==80)].nodePort}')

export HOST_URL=$(kubectl get route.serving.knative.dev/quarkus-knative -o jsonpath='{.status.domain}')

curl -H "Host: ${HOST_URL}" ${IP_ADDRESS}:${SERVICE_NODEPORT}/hello