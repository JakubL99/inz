az login --service-principal -u 31da5721-7b51-4afc-984d-968d6adfacf1 -p I3h1.wKR~KgAFQaGa4nxeygnKrQtHtLkoM  --tenant e66af1e9-d714-4a1f-8101-22a504f9622f

appId = "31da5721-7b51-4afc-984d-968d6adfacf1"
password = "I3h1.wKR~KgAFQaGa4nxeygnKrQtHtLkoM"
tenant = "e66af1e9-d714-4a1f-8101-22a504f9622f"

az aks get-credentials --resource-group cluster-inz-jlis-k8s --name praca-dyplomowa-j-lis
az aks browse --resource-group cluster-inz-jlis-k8s --name praca-dyplomowa-j-lis

kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard --user=clusterUser

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml
