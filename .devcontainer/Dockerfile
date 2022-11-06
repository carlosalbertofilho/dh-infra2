# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.0/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
 RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends python3 unzip git bash openssh \
     && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
     && unzip awscliv2.zip \
     && sh ./aws/install \
     && apt install software-properties-common -y \
     && add-apt-repository --yes --update ppa:ansible/ansible \
     && apt install ansible -y \
     && apt-get install python3-pip -y  \
	 && pip3 install boto3 \
	 && pip3 install boto \
	 && curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  \
     && apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com/ $(lsb_release -cs) main" \
     && apt install terraform \
     && apt install net-tools


