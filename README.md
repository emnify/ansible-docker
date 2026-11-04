# Ansible Docker

Ansible docker images for the Jenkins pipelines.

## Images

| Tag | Build context | Ansible | For |
|---|---|---|---|
| `1.0` | `/` | 2.9.20 on Python 3.9 | legacy hosts (Ubuntu 14.04) |
| `2.0` | `core/` | ansible-core 2.21 on Python 3.13, with `amazon.aws` and `community.general` | Ubuntu 22.04 and newer |

There is no pipeline. Images are built and pushed by hand to the shared ECR, under the
`docker.io/emnify/ansible` repository the Jenkins pods pull from:

```bash
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 648956897802.dkr.ecr.eu-west-1.amazonaws.com
docker build --platform linux/amd64 -t 648956897802.dkr.ecr.eu-west-1.amazonaws.com/docker.io/emnify/ansible:2.0 core/
docker push 648956897802.dkr.ecr.eu-west-1.amazonaws.com/docker.io/emnify/ansible:2.0
```
