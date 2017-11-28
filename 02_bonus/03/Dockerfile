# Dockerfile for a c project

FROM debian

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install gcc -y
RUN apt-get install binutils -y
RUN apt-get install git -y

# Tools
RUN apt-get install vim -y
RUN apt-get install make -y

CMD /bin/bash
