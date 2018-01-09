FROM ubuntu:16.04
#FROM python:2.7
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN apt-get update && apt-get install -y python-pip
RUN pip install numpy cython scipy matplotlib h5py nibabel 
RUN pip install cvxpy scikit-learn
RUN pip install dipy==0.13.0

#to make it work on singularity
#ENV PYTHONPATH /usr/local/lib/python2.7/dist-packages
RUN ldconfig


