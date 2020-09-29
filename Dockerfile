FROM debian

RUN apt-get update && \
    apt-get install -y curl jq git sshpass && \
    curl -L https://github.com/vmware/govmomi/releases/download/v0.23.0/govc_linux_amd64.gz | gunzip > /usr/local/bin/govc && \
    chmod +x /usr/local/bin/govc && \
    curl -L --output gron.tgz https://github.com/tomnomnom/gron/releases/download/v0.6.0/gron-linux-amd64-0.6.0.tgz && tar xzf gron.tgz && \
    mv gron /usr/local/bin/ && \
    curl -L --output spruce https://github.com/geofffranks/spruce/releases/download/v1.27.0/spruce-linux-amd64 && chmod +x spruce && \
    mv spruce /usr/local/bin && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
