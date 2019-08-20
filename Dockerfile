FROM ubuntu:latest


RUN mkdir /app
RUN apt-get update && apt-get upgrade -y
RUN apt-get install dante-server libpam-pwdfile -y


ADD . /app

RUN mv /app/danted.conf /etc
RUN mv /app/sockd /etc/pam.d/

EXPOSE 1080

CMD  ["danted"]