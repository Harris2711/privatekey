sudo echo $(kubeadm token create --print-join-command) > workerjointoken.txt

sudo aws secretsmanager update-secret --secret-id secretworker --secret-string file://workerjointoken.txt
