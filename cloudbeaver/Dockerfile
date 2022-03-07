FROM node:17 as builder

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get install openjdk-11-jdk maven yarn npm git -y
RUN npm install -g lerna
RUN git clone https://github.com/dbeaver/cloudbeaver.git /cloudbeaver
RUN cd /cloudbeaver/deploy && ./build.sh

FROM openjdk:11-jdk
RUN apt-get update && apt-get upgrade -y
COPY --from=builder /cloudbeaver/deploy/cloudbeaver /opt/cloudbeaver
WORKDIR /opt/cloudbeaver
VOLUME [ "/opt/cloudbeaver/workspace" ]
EXPOSE 8978
CMD ["./run-server.sh"]