sudo systemctl stop kubelet kube-proxy kube-nginx
sudo systemctl disable kubelet kube-proxy kube-nginx
#crictl ps -q | xargs crictl stop
systemctl stop containerd && systemctl disable containerd
source environment.sh
#mount |grep -E 'kubelet|cni|containerd' | awk '{print $3}'|xargs umount
rm -rf ${K8S_DIR}/kubelet
rm -rf ${DOCKER_DIR}
rm -rf ${CONTAINERD_DIR}
sudo rm -rf /etc/systemd/system/{kubelet,kube-proxy,containerd,kube-nginx}.service
sudo rm -rf /etc/flanneld/cert /etc/kubernetes/cert
rm -rf /opt/k8s/bin/*
sudo iptables -F && sudo iptables -X && sudo iptables -F -t nat && sudo iptables -X -t nat
sudo systemctl stop kube-apiserver kube-controller-manager kube-scheduler
sudo rm -rf /etc/systemd/system/{kube-apiserver,kube-controller-manager,kube-scheduler}.service
sudo rm -rf /opt/k8s/bin/{kube-apiserver,kube-controller-manager,kube-scheduler}
sudo rm -rf /etc/flanneld/cert /etc/kubernetes/cert
systemctl stop etcd
sudo rm -rf ${ETCD_DATA_DIR} ${ETCD_WAL_DIR}
sudo rm -rf /etc/systemd/system/etcd.service
sudo rm -rf /etc/etcd/cert/
sudo rm -rf /opt/k8s/bin/etcd
rm -rf /opt/containerd
rm -rf /opt/k8s
rm -rf /etc/kubernetes
