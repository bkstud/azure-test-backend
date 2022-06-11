FROM ubuntu 

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install flask flask-cors

ADD app.py /
WORKDIR /

EXPOSE 80

CMD ["python3", "app.py"]