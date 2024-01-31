# Setup kubernetes cluster using k3s
### 1. Master node
```
curl -sfL https://get.k3s.io | sh -s server --tls-san <server-ip>
```
Get token:
```
sudo cat /var/lib/rancher/k3s/server/node-token
```
### 2. Agent node
```
curl -sfL https://get.k3s.io | K3S_URL=https://<master-node-ip>:6443 K3S_TOKEN=<token> sh -
```
### 3. Get kubeconfig file
```
sudo cat /etc/rancher/k3s/k3s.yaml
```
Copy result and paste to your `local server` ~/.kube/config

Remember to replace `server ip` in `kubeconfig` with your `master ip`

### 4. Test
```
kubectl get nodes
```

