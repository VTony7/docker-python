FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i C C.UTF-8
ENV LANG C.UTF-8
ENV TZ UTC
ENV TERM xterm

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

#RUN python -m pip install jupyterlab
