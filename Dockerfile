FROM ubuntu 

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install flask

ADD app.py /
WORKDIR /

EXPOSE 5000/tcp

CMD ["python3", "app.py"]