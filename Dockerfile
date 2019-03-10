FROM ubuntu:rolling
RUN apt update
RUN apt-get dist-upgrade -y
RUN apt-get install python3 python3-influxdb python3-paho-mqtt -y
RUN mkdir /repos
ADD ts/ /TREMENDOUS/
RUN useradd -ms /bin/bash swampy
USER swampy
ENTRYPOINT ["python3", "/TREMENDOUS/tremendousswampy.py"]
