# Jenkins-Initiator
This is a small, lightweight Alpine docker container that contains the bare minimum to run a Jenkins runner via Docker and SSH.

Packages:
- `openssh` - SSH server
- `openjdk17-jre-headless` - Java 17

Credentials:
- `jenkins` - jenkins

This image can do very little outside of setting up other pipelines.