ARG GITHUB_TOKEN
ARG BASE_CONTAINER=gcr.io/kubeflow-images-public/tensorflow-1.13.1-notebook-cpu:v0.5.0
FROM $BASE_CONTAINER

LABEL maintainer="andrewm4894@gmail.com"
LABEL version="01"

RUN pip3 install git+https://github.com/andrewm4894/my_utils.git#egg=my_utils

RUN pip3 install kfp --upgrade

ENV NB_PREFIX /

CMD ["sh","-c", "jupyter notebook --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"]
