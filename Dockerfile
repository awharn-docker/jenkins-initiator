FROM alpine:3
RUN apk add --no-cache dropbear openjdk17-jre-headless
RUN addgroup --gid 1000 "jenkins" && adduser --uid 1000 --ingroup "jenkins" --home "/home/jenkins" --shell "/bin/sh" --disabled-password --gecos "" "jenkins"
RUN echo 'jenkins:jenkins' | chpasswd
CMD [ "/usr/sbin/dropbear -gwmFR -p 22" ]