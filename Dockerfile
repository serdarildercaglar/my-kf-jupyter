FROM tensorflow/tensorflow:1.15.0-gpu-py3


RUN export DEBIAN_FRONTEND=noninteractive
ADD cudaubuntu1804-10.0.130-410.48_1.0-1_amd64.deb /home
RUN dpkg -i /home/cudaubuntu1804-10.0.130-410.48_1.0-1_amd64.deb
RUN apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub

RUN apt-get update
# RUN apt-get -y install  cuda
RUN DEBIAN_FRONTEND='noninteractive' apt-get -y install  cuda
RUN apt-get -f install
RUN apt-get -y install nvidia-cuda-toolkit
RUN pip install pandas
RUN pip install scipy
RUN pip install numpy==1.19.0
RUN pip install jupyterlab




ENV NB_PREFIX /

USER root

CMD ["sh","-c", "jupyter lab --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"]


