FROM ubuntu

 RUN apt-get update -y && apt-get install -y python3-pip
 RUN pip3 install flask
 RUN pip3 install flask-mysql

 COPY . /opt/source-code

 ENTRYPOINT FLASK_APP = /opt/source-code/app.py flask run