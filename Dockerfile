FROM haozhi/tensorflow

ARG conda=/home/ubuntu/.conda/bin/conda
ARG pip=/home/ubuntu/.conda/bin/pip

RUN sh ~/.upgrade_system.sh && \
    $conda uninstall tensorflow -y && \
    $conda install tensorflow=1.15 -y && \
    $pip install bert-serving-server && \
    $pip install bert-serving-client && \
    $conda clean --all -y

LABEL name='bert' version='1.0' description='bert' by='haozi'
