FROM ubuntu:18.04
MAINTAINER "Dyaa Ahmed - dyaaeldinahmed@gmail.com"
RUN apt-get update -y && \
	  apt-get install libfuse2 \
    libstat-lsmode-perl/bionic nvidia-modprobe \
    libx11-xcb1 libgtk-3-0 libnss3 libasound2 \
    libdbus-glib-1-2 -qqy x11-apps wget curl -y

RUN wget -O /mnt/time.AppImage https://repo2.timedoctor.com/td-desktop-hybrid/prod/timedoctor-desktop_latest_linux-x86_64.AppImage
RUN chmod a+x /mnt/time.AppImage
CMD "/mnt/time.AppImage"
