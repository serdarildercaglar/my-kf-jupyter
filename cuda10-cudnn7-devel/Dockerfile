# This is the docker file built for GLUE task


FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04@sha256:80861a80f15725f143eb23244436b6ee2fbe8f72d8d8a208c313b3bb758c814b
RUN apt-get update && apt-get install -y vim gawk wget software-properties-common vim-addon-manager locales gdb 
RUN apt-get update && apt-get install -y python3.6 python3.6-dev python3.6-doc python3.6-dbg 

#python-distutils
ENV  LANG="en_US.UTF-8" LC_ALL="en_US.UTF-8" LANGUAGE="en_US.UTF-8" LC_TYPE="en_US.UTF-8" TERM=xterm-256color
RUN locale-gen en_US en_US.UTF-8

RUN apt-get update
RUN apt-get install -y git build-essential
RUN apt-get install -y rsync jq sudo net-tools apt-transport-https curl ca-certificates clang libglib2.0-dev
RUN apt-get install -y htop bash-completion libibverbs-dev graphviz libunwind-dev

RUN apt-get install -y openjdk-8-jdk && \
    echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list && \
    curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add - && \
	  apt-get update 
RUN apt install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN pip3 install tensorflow-gpu==1.15
RUN pip3 install numpy==1.19
RUN pip3 install pandas
RUN pip3 install spicy
RUN pip3 install  Jupyterlab
RUN pip install nvidia-pyindex
RUN pip install nvidia-tensorflow


ENV NB_PREFIX /

USER root

CMD ["sh","-c", "jupyter lab --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"]


