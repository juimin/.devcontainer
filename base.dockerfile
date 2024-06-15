FROM ubuntu:24.04

ARG REMOTE_USER=$REMOTE_USER
ARG REMOTE_USER_UID=1023
ARG REMOTE_USER_GID=$REMOTE_USER_UID

# Create the user
RUN groupadd --gid $REMOTE_USER_GID $REMOTE_USER \
    && useradd --uid $REMOTE_USER_UID --gid $REMOTE_USER_GID -m $REMOTE_USER \
    && apt update \
    && apt install -y sudo \
    && echo $REMOTE_USER ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$REMOTE_USER \
    && chmod 0440 /etc/sudoers.d/$REMOTE_USER

USER $REMOTE_USER

# Do stuff as the user
# Generic tools
RUN sudo apt install -y git make vim
# Docker tooling
RUN sudo apt install -y docker.io docker-buildx
# Language specific
RUN sudo apt install python3