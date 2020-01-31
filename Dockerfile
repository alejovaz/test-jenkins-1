FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install python python-pip
RUN mkdir /opt/app
COPY src/main.py /opt/app/
COPY src/requirements.txt /opt/app
RUN pip install -r /opt/app/requirements.txt

EXPOSE 5000
COPY docker-entrypoint.sh /
ENTRYPOINT "/docker-entrypoint.sh"
