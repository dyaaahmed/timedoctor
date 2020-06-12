# Time Doctor - Dockerized
**steps:**
- clone repo
> git clone https://github.com/dyaaahmed/timedoctor.git
- build image from Dockerfile 
> docker build -t timedoctor .
- create $HOME/.Xauthority
> XAUTH=$HOME/.Xauthority; touch $XAUTH
- run time doctor container 
> docker run --tty --interactive --network=host -v "./timedoctor:/root/.config" --env DISPLAY=$DISPLAY --privileged --volume $XAUTH:/root/.Xauthority timedoctor:latest
