#https://medium.com/@aavulasaikiran/argocd-installation-using-helm-charts-7711863ced65
# Ik heb argoCD helmchart van een github repo gecloned.  --> om toegang te veranderen heb ik in values.yaml ipv clusterIP verandert
# naar NodePort, met het corresponderende nodeport nummer zodat mijn Kubelets toegang kregen voor de webinterface. 

#https://github.com/argoproj/argo-helm.git

git clone https://github.com/argoproj/argo-helm.git
cd argo-helm/charts/argo-cd/
kubectl create ns argocd-gitops
helm dependency up
helm install myargo . -n argocd-gitops

