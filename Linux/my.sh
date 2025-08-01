# OOM
bash -c "for b in {0..99999999}; do a=$b$a; done"

# Append text to a file without permission
# tee -a: Append the output to the files rather than overwriting them.
echo "your text" | sudo tee -a /path/to/your/file
sudo bash -c "echo 'your text' >> /path/to/your/file"

# Etcdctl
etcdPodName="etcd-minikube"
alias ectl="kubectl exec -it -n kube-system ${etcdPodName} -- etcdctl --cacert='/var/lib/minikube/certs/etcd/ca.crt' --cert='/var/lib/minikube/certs/etcd/peer.crt' --key='/var/lib/minikube/certs/etcd/peer.key'"


# Get all feature gates in a Kubernetes cluster
kubectl get --raw /metrics | grep kubernetes_feature_enabled

# Create a copy of $pod changing the command of $container to bash
kubectl debug -n $ns $pod  -it --copy-to=my-debugger --container=$container -- bash
