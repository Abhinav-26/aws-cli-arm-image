FROM ubuntu:latest
RUN apt update && apt install curl git -y
RUN apt-get install unzip -y
WORKDIR /app
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" 
RUN unzip awscliv2.zip
RUN ./aws/install
CMD /usr/sbin/sshd -D
