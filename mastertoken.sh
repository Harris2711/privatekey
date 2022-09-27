sudo echo $(kubeadm token create --print-join-command) --control-plane --certificate-key $(kubeadm init phase upload-certs --upload-certs | grep -vw -e certificate -e Namespace) > masterjointoken.txt

sudo aws secretsmanager update-secret --secret-id secretmaster --secret-string file://masterjointoken.txt
