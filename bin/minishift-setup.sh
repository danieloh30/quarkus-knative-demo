#!/bin/bash

# WARNING: this totally destroys and recreates your `knative` profile,
# thereby guaranteeing (hopefully) a clean environment upon successful
# completion.

if minishift status | head -1 | grep "Running" >/dev/null; then
  echo "Please stop your running minishift to acknowledge this script will destroy it."
  exit 1
fi

set -ex

# blow away everything in the knative profile
#minishift profile delete quarkus-knative

# configure knative profile
minishift profile set quarkus-knative
minishift config set openshift-version v3.11.0
minishift config set memory 8GB
minishift config set cpus 3
minishift config set disk-size 25g
minishift config set image-caching true
minishift config set vm-driver hyperkit

minishift addons enable admin-user

# Start minishift
minishift start