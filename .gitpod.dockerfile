FROM gitpod/workspace-full:latest

USER root
# Install cland, used as language server for VSCode.
RUN apt-get update && apt-get install -y clang-tools-8
    && update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings
ENV ...

# Give back control
USER root