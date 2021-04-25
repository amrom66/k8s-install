---

title: k8s一键部署文档
tags: ["kubernetes"]
date: 2021-03-07

---

版本：k8s 1.20.3
组件：`kubectl kubeadm kubelet kube-scheduler kube-proxy etcd containerd calico kube-nginx kube-apiserver kube-controllermanager`

**注意**： hostname名称需要规范，不允许出现.，一般设置为小写字母，数字，-

使用手册：
1. 配置`environment.sh`
2. 运行脚本`bash k8s-install.sh`
