# ansible-core image for hosts on current Ubuntu (22.04 and newer).
# The root Dockerfile (tag 1.0, Ansible 2.9) stays for the legacy 14.04 hosts.
FROM python:3.13.18-trixie

LABEL maintainer="EMnify (https://github.com/EMnify)" \
  org.label-schema.name="Ansible Container" \
  org.label-schema.description="ansible-core container to be used in CI pipelines" \
  org.label-schema.schema-version="1.0"

COPY requirements.txt requirements.yml /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt \
  && ansible-galaxy collection install -r /tmp/requirements.yml -p /usr/share/ansible/collections

CMD ["/bin/bash"]
