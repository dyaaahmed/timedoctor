# Time Doctor - Dockerized
**steps:**
- Clone repo
> git clone https://github.com/dyaaahmed/timedoctor.git
- Build image from Dockerfile 
> docker build -t timedoctor .
- Create Xauthority file
> XAUTH=$HOME/.Xauthority; touch $XAUTH
- Run time doctor container 
> docker run --tty --interactive --network=host -v "./timedoctor:/root/.config" --env DISPLAY=$DISPLAY --privileged --volume $XAUTH:/root/.Xauthority timedoctor:latest
