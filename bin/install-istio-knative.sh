#!/bin/bash

## Istio
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.5.1/istio-crds.yaml && \
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.5.1/istio.yaml

#Knative-serving
kubectl apply --filename https://github.com/knative/serving/releases/download/v0.5.1/serving.yaml

#Knative-build
kubectl apply --filename https://github.com/knative/build/releases/download/v0.5.0/build.yaml

#Knative-eventing
kubectl apply --filename https://github.com/knative/eventing/releases/download/v0.5.0/release.yaml && \
kubectl apply --filename https://github.com/knative/eventing-sources/releases/download/v0.5.0/release.yaml && \
kubectl apply --filename https://raw.githubusercontent.com/knative/serving/v0.5.0/third_party/config/build/clusterrole.yaml