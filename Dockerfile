FROM ubuntu:16.04
LABEL maintainer="Anshuman Bhartiya"

RUN apt-get update

RUN apt-get install -y libldns-dev git build-essential wget python3 python python-setuptools python-dev libcurl4-openssl-dev
RUN easy_install pip

WORKDIR /

RUN git clone git://github.com/xmendez/wfuzz.git

WORKDIR /wfuzz
RUN python setup.py install

ENTRYPOINT [ "wfuzz" ]
