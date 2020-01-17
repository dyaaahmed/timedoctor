# timedoctor - dockerized
**steps:**
- clone repo
> git clone https://github.com/dyaaahmed/timedoctor.git
- build image from docker file 
> docker build -t timedoctor .
- create $HOME/.Xauthority
> XAUTH=$HOME/.Xauthority
> touch $XAUTH
- run time doctor container 
> docker run --tty --interactive --network=host -v "./timedoctor:workingdir" --env DISPLAY=$DISPLAY --privileged --volume $XAUTH:/root/.Xauthority timedoctor:latest
