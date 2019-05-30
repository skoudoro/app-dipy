FROM ubuntu:16.04
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN apt-get update && apt-get install -y python-pip
RUN pip install numpy cython scipy matplotlib==2.2.3 h5py nibabel nipype
RUN pip install cvxpy scikit-learn
RUN pip install dipy==0.14.0 joblib

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV PYTHONNOUSERSITE=true

RUN apt-get update && apt-get install -y python-tk
