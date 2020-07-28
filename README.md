https://gardener.cloud/documentation/guides/applications/network-isolation/

kubectl apply -f bar-namespace.yaml
kubectl apply -f foo-namespace.yaml

kubectl apply -f nginx-bar-deployment.yaml 
kubectl apply -f nginx-foo-deployment.yaml 

kubectl apply -f nginx-foo-srv.yaml 
kubectl apply -f nginx-foo-srv.yaml 

## test 

kubectl run -i --tty client --image=tutum/curl -n=bar

# get the index.html from the nginx of the namespace "customer1" => success
curl http://nginx.bar
# get the index.html from the nginx of the namespace "customer2" => success
curl http://nginx.foo

kubectl apply -f network-policy-bar.yaml
kubectl apply -f network-policy-foo.yaml

# Resouce Quotas
https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/quota-memory-cpu-namespace/

kubectl apply -f quota-mem-cpu-namespace.yaml
kubectl apply -f resouce-quota.yaml
kubectl apply -f quota-mem-cpu-demo.yaml
kubectl apply -f quota-mem-cpu-demo2.yaml

# Isolation
https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#:~:text=Step%20One%3A%20Attach%20label%20to,the%20node%20you've%20chosen.

kubectl get nodes
kubectl label nodes gke-cluster-1-default-pool-732c4ecd-2p5m app-type=third-party
kubectl apply -f pod-nginx.yaml 