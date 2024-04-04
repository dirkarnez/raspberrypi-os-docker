FROM --platform=linux/arm64 dtcooper/raspberrypi-os:latest

RUN apt-get update -y \ 
&& apt-get -y --no-install-recommends install \
   build-essential \
   lsb-release \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD lsb_release -a
