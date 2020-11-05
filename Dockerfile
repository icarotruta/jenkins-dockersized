FROM jenkins/jenkins:lts
USER root
RUN apt-get update
# Download docker
RUN curl -sSL https://get.docker.com/ | sh
# Download kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl; chmod +x ./kubectl; mv ./kubectl /usr/local/bin/kubectl
# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip

# Unzip
RUN unzip terraform_0.13.5_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version 
