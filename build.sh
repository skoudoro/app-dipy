#!/bin/bash
docker build -t brainlife/dipy . && docker tag brainlife/dipy brainlife/dipy:0.13 && docker push brainlife/dipy

