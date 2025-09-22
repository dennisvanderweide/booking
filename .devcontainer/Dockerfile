FROM golang:1.25.1-alpine3.22

# Set default shell to ash instead of sh
ENV SHELL=/bin/ash

# Install dependencies as root
RUN apk add sudo git curl

ARG USER=user
ENV HOME=/home/$USER

# Create a non-root user
RUN adduser -D -u 1000 $USER \
    && echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER

USER $USER
WORKDIR $HOME/workspace/

# Set environment variables
ENV GOPATH=/home/user/go
ENV PATH=$PATH:/home/user/go/bin

# Copy the entrypoint script
COPY ./entrypoint.sh /home/user/entrypoint.sh
RUN sudo chmod +x /home/user/entrypoint.sh

CMD [ "/home/user/entrypoint.sh" ]
