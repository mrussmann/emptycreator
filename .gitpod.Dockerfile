FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -y update
RUN sudo apt-get -y upgrade

RUN sudo apt-get install -y haskell-platform

RUN bash -c "sudo curl -L https://nixos.org/nix/install | sh"

RUN bash -c ". ~/.nix-profile/etc/profile.d/nix.sh"


# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
