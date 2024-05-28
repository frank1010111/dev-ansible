FROM ubuntu:latest
RUN apt update && apt install -y openssh-server sudo ansible

RUN useradd -rm -s /bin/bash -g root -G sudo -u 1002 test 

RUN  echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

