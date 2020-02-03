FROM continuumio/miniconda3

LABEL version="0.0.1"
LABEL description="Python based dev environment"
LABEL maintainer="Rick Donato"

WORKDIR /workspace
COPY . /workspace

RUN apt-get update -y 
RUN apt-get install -y tcpdump curl wget 

RUN pip install -r requirements.txt 

CMD ["/bin/bash"]
