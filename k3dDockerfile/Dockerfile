FROM ubuntu:16.04

ARG KUBECTL_VERSION=1.19.0

# Install generally useful things
#
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update                                          \
  && apt-get -y --force-yes install --no-install-recommends     \
    curl                                                    \
    sshpass                                                 \
    dnsutils                                                \
    git                                                     \
    jq                                                      \
    net-tools                                               \
    ssh                                                     \
    telnet                                                  \
    unzip                                                   \
    vim                                                     \
    wget                                                    \
    bash                                                    \
    sudo                                                    \
    software-properties-common                              \
    apt-transport-https

# Install Kubectl
#
ADD https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

# Install kind
#
RUN wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash