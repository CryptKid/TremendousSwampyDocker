FROM ubuntu:rolling
RUN apt update
RUN apt-get dist-upgrade -y
RUN apt-get install python2 python-influxdb python-paho-mqtt python-pytest -y
RUN mkdir /repos
ADD ts/ /TREMENDOUS/
RUN useradd -ms /bin/bash swampy
USER swampy
ENTRYPOINT ["python2", "/TREMENDOUS/tremendousswampy.py"]
