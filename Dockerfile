FROM jupyter/datascience-notebook:python-3.9.7

WORKDIR /workdir
EXPOSE 8888

# jupyter lab extensions. 
RUN conda update -n base conda && \
    conda install -c conda-forge jupyterlab-snippets && \
    conda install -c conda-forge jupyterlab-git -y && \
    jupyter lab build

# python package installation. 
RUN pip install japanize-matplotlib && \
    pip install mojimoji && \
    pip install jupyterlab_vim && \
    pip install openpyxl && \
    pip install tableone 

RUN pip install contextplt && \
    pip install cmocean && \ 
    pip install watermark 


