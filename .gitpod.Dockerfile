FROM gitpod/workspace-full:latest
# Install kubectl explicitly
RUN curl -LO "https://dl.k8s.io/release/$(curl -Ls https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && sudo mv kubectl /usr/local/bin/

# Install Tekton CLI
RUN curl -LO https://github.com/tektoncd/cli/releases/download/v0.38.0/tkn_0.38.0_Linux_x86_64.tar.gz && \
    tar -xzf tkn_0.38.0_Linux_x86_64.tar.gz tkn && \
    sudo mv tkn /usr/local/bin/ && \
    rm tkn_0.38.0_Linux_x86_64.tar.gz

# Install ArgoCD CLI
RUN curl -sSL -o argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 && \
    chmod +x argocd && sudo mv argocd /usr/local/bin/
