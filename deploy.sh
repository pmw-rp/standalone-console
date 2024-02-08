NAMESPACE=rp

kubectl create namespace ${NAMESPACE}

kubectl create configmap extra-config --from-file config/ -n ${NAMESPACE}
kubectl create secret generic license --from-file secrets/redpanda.license -n ${NAMESPACE}

helm install redpanda redpanda/console -n ${NAMESPACE} -f values.yaml

