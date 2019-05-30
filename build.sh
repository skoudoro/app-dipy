#!/bin/bash

set -x
set -e

docker build -t brainlife/dipy .
docker tag brainlife/dipy brainlife/dipy:0.14.2
docker push brainlife/dipy
