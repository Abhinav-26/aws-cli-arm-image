FROM ubuntu:latest
RUN apt update && apt install curl git -y
WORKDIR /app
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" 
RUN unzip awscliv2.zip
RUN sudo ./aws/install
ENTRYPOINT ["tail", "-f", "/dev/null"]
