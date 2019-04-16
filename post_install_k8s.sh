mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

hostname=`hostname`
kubectl taint nodes $hostname node-role.kubernetes.io/master-


sudo sed -i 's/cni/kubenet/' /var/lib/kubelet/kubeadm-flags.env
sudo systemctl restart kubelet

