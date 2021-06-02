#Dashboard
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard --user=clusterUser
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml
#Deploy micro
git clone https://github.com/JakubLis689/micro-dp
cd micro-dp
kubectl apply -f micro-setup.yaml
#Chaos Mesh
curl -sSL https://mirrors.chaos-mesh.org/v1.2.0/install.sh | bash
