# Validation Instructions
## Prerequisites
- Docker
- Kind
- Helm
- kubectl


## Setup
1. Create cluster:
   ```bash
   kind create cluster --config cluster.yml

2. run bootstrap:
   ```bash
    ./bootstrap.sh
3. verify deployment:
   ```bash
    kubectl get all,cm,secret,ing -A
