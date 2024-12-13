export repo_name=https://github.com/redhat-cop/openshift-iac-landing-zones.git
export cluster_name=this
oc apply -f .bootstrap/subscription.yaml
oc apply -f .bootstrap/cluster-rolebinding.yaml
oc apply -f .bootstrap/argocd.yaml
envsubst < .bootstrap/root-application.yaml | oc apply -f -
