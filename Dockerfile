FROM ubuntu:12.04
RUN apt-get update && apt-get install -y mailutils ssmtp
ARG USER 
ENV USER $USER
RUN useradd -ms /bin/bash $USER
COPY mail.sh /mail.sh
RUN chmod +x /mail.sh
RUN chown $USER:$USER /etc/ssmtp/ssmtp.conf
RUN chown $USER:$USER /mail.sh
USER $USER
WORKDIR /home/$USER
ENTRYPOINT /mail.sh
