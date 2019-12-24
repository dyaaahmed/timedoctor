XAUTH=$HOME/.Xauthority
touch $XAUTH
docker run --tty --interactive --network=host --env DISPLAY=$DISPLAY --privileged --volume $XAUTH:/root/.Xauthority timedoctor:latest
