FROM ubuntu:rolling
RUN apt update
RUN apt-get dist-upgrade -y
RUN apt-get install python2 python-influxdb python-paho-mqtt python-pytest -y
#Adding random packages
RUN apt-get install python-six python-distlib python-html5lib python-colorama python-pip python-urllib3 python-chardet python-requests python-setuptools -y
RUN mkdir /repos
ADD ts/ /TREMENDOUS/
RUN useradd -ms /bin/bash swampy
USER swampy
ENTRYPOINT ["python2", "/TREMENDOUS/tremendousswampy.py"]
