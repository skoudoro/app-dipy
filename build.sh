#!/bin/bash
docker build -t brainlife/dipy . && docker tag brainlife/dipy brainlife/dipy:0.14 && docker push brainlife/dipy
