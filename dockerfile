FROM ubuntu:16.04


MAINTAINER Your Name "mbaffour24@cmc.edu"


# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN apt-get update -y && \
      apt-get install -y python3-pip python3-dev
RUN pip3 install --upgrade pip==20.3.4 && \
      pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]
COPY . /app

ENV FLASK_APP=app.py
ENV FLASK_APP=app.py
CMD [ "app.py" ]
