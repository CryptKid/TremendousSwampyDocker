FROM ubuntu:rolling
RUN apt update
RUN apt-get dist-upgrade -y
RUN apt-get install python3 python3-influxdb python3-paho-mqtt python3-pytest -y
#Adding random packages
RUN apt-get install python3-six python3-distlib python3-html5lib python3-colorama python3-pip python3-urllib3 python3-chardet python3-requests python3-setuptools -y
#RUN mkdir /repos
COPY ts/ /TREMENDOUS/
#RUN useradd -ms /bin/bash swampy
#USER swampy
ENTRYPOINT ["python3", "/TREMENDOUS/tremendousswampy.py"]
