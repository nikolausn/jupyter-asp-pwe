FROM jupyter/minimal-notebook:latest

USER root

# get the clingo binary file for linux
# and install 
RUN cd /opt && \
	wget https://github.com/potassco/clingo/releases/download/v5.3.0/clingo-5.3.0-linux-x86_64.tar.gz -O clingo.tar.gz && \
	tar -xvzf clingo.tar.gz && \
	ln -s /opt/clingo-5.3.0-linux-x86_64/clingo /usr/bin 


USER jovyan
# install PW_explorer	
RUN pip install PW_explorer

# prepare a home directory for answer set programming
RUN cd ~ && \
	mkdir asp


MAINTAINER Nikolaus Parulian <nikolaus.nova@gmail.com>
