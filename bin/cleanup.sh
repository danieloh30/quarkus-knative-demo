#!/bin/bash

#Clean up
oc delete all --all  -n knative-build
oc delete all --all  -n knative-serving
oc delete all --all  -n istio-system
oc delete all --all  -n myproject
oc delete project knative-build
oc delete project knative-serving
oc delete project istio-system