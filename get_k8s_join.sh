token=`kubeadm token list | grep authentication | awk '{print $1}'`
hash=`openssl x509 -in /etc/kubernetes/pki/ca.crt -noout -pubkey | openssl rsa -pubin -outform DER 2>/dev/null | sha256sum | cut -d' ' -f1`

echo "kubeadm join --token $token 192.168.31.62:6443 --discovery-token-ca-cert-hash sha256:$hash"
