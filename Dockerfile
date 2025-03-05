FROM alpine:3
RUN apk add --no-cache openssh openjdk17-jre-headless git
RUN addgroup --gid 1000 "jenkins" && adduser --uid 1000 --ingroup "jenkins" --home "/home/jenkins" --shell "/bin/sh" --disabled-password --gecos "" "jenkins"
RUN echo 'jenkins:jenkins' | chpasswd
RUN ssh-keygen -A
CMD /usr/sbin/sshd -D