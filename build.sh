docker build -t brainlife/dipy:latest .
docker build -t brainlife/dipy:0.13 .

if [ $? -eq 0 ];
then
    docker push brainlife/dipy:latest
    docker push brainlife/dipy:0.13
fi

