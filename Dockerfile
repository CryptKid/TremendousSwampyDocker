FROM ubuntu:rolling
RUN apt update
RUN apt-get dist-upgrade -y
RUN apt-get install python2 python2-influxdb python2-paho-mqtt python2-pytest -y
RUN mkdir /repos
ADD ts/ /TREMENDOUS/
RUN useradd -ms /bin/bash swampy
USER swampy
ENTRYPOINT ["python3", "/TREMENDOUS/tremendousswampy.py"]
