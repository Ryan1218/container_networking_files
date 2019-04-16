sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | sudo apt-key add - 

sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF'

sudo apt-get update
sudo apt-get install -y curl kubernetes-cni=0.6.0-00 kubelet=1.13.4-00 kubeadm=1.13.4-00 kubectl=1.13.4-00

