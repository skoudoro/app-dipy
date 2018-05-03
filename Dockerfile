FROM ubuntu:16.04
#FROM python:2.7
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install numpy cython scipy matplotlib h5py nibabel nipype
RUN pip3 install cvxpy scikit-learn
RUN pip3 install dipy==0.14.0

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

