FROM gitpod/workspace-full

USER root

RUN apt-get update -y
RUN apt-get upgrade -y

# RUN apt-get install dialog apt-utils -y

RUN apt-get install haskell-platform -y

#RUN curl https://nixos.org/nix/install | sh

USER gitpod

RUN /bin/bash -c "$(curl -fsSL https://nixos.org/nix/install)"

# RUN bash -c "sudo curl -L https://nixos.org/nix/install | sh"

# CMD "sudo curl -L https://nixos.org/nix/install | sh"

# RUN bash -c ". ~/.nix-profile/etc/profile.d/nix.sh"


# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
