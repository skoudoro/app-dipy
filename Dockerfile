FROM ubuntu:16.04
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN apt-get update && apt-get install -y python-pip
RUN pip install numpy cython scipy matplotlib h5py nibabel nipype
RUN pip install cvxpy scikit-learn
CMD git clone https://github.com/nipy/dipy.git && cd dipy && pip install --user -e .

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

