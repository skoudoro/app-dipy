

docker build -t brainlife/dipy .

#brainlife/dipy is auto build
#if [ $? -eq 0 ];
#then
#    docker push brainlife/dipy
#    #docker push brainlife/dipy:0.13
#fi

if [ $? -eq 0 ];
then
    docker push brainlife/dipy

#    docker run \
#        -v /var/run/docker.sock:/var/run/docker.sock \
#        -v `pwd`:/output \
#        --privileged -t --rm \
#        singularityware/docker2singularity \
#        brainlife/dipy
fi
