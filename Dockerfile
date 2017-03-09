FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    pip install --upgrade pip setuptools

ENV DB_URL sqlite:///%(here)s/uupgrade-web.sqlite
ENV ENVIRONMENT development

WORKDIR /app

COPY . /app

RUN python setup.py install

ENTRYPOINT [ "./start.sh"]
