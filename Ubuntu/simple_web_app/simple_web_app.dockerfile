FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip default-libmysqlclient-dev
RUN apt-get install -y python3-flask

COPY my_app.py /opt/my_app.py

ENTRYPOINT FLASK_APP=/opt/my_app.py flask run --host=0.0.0.0

ENV SERVER_PORT=8000
ENV SERVER_HOST=0.0.0.0
