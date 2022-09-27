sudo echo $(kubeadm token create --print-join-command) > masterjointoken.txt

sudo aws secretsmanager update-secret --secret-id secretworker --secret-string file://workerjointoken.txt
