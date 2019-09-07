FROM gitpod/workspace-full:latest

USER root
# Configure cland and clang included in gitpod image, used as
# language server for VSCode and our more modern compiler.
RUN apt-get update && update-alternatives --install /usr/bin/clang clangd /usr/bin/clangd 100 && update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100 && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings
# ENV ...

# Give back control
USER root
