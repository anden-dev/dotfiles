alias kx='kubectx'
alias kn='kubens'
alias k='kubectl'
alias sk='kubectl -n kube-system'
alias ke='EDITOR=vim kubectl edit'
alias klbaddr="kubectl get svc -ojsonpath='{.status.loadBalancer.ingress[0].hostname}'"
alias knrunning='kubectl get pods --field-selector=status.phase!=Running'
alias kfails='kubectl get po -owide --all-namespaces | grep "0/" | tee /dev/tty | wc -l'
alias kimg="kubectl get deployment --output=jsonpath='{.spec.template.spec.containers[*].image}'"

podname() {
	kubectl get pods "$@" -o jsonpath="{.items[*].metadata.name}"
}
