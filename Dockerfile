FROM ubuntu
MAINTAINER masiqi@gmail.com

RUN /bin/sed -i.bak 's/archive/cn\.archive/' /etc/apt/sources.list
RUN apt-get update

# Install aria2
RUN apt-get install -y aria2
RUN mkdir -p /etc/aria2;touch /etc/aria2/aria2.session

# aria2.conf
ADD /data/aria2.conf /etc/aria2/aria2.conf

# aria2 downloaded callback
ADD /data/download-complete.sh /etc/aria2/download-complete.sh

EXPOSE 6800 

#CMD ["/usr/bin/aria2c", "--conf-path=/etc/aria2/aria2.conf", "-D"]
CMD ["/usr/bin/aria2c", "--conf-path=/etc/aria2/aria2.conf"]
