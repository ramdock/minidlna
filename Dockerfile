FROM debian:stretch
MAINTAINER Marcel Marquez <momarquez@gmail.com>

RUN apt update && apt install -y minidlna

ADD run.sh /run.sh
RUN chmod 755 /*.sh

CMD ["/run.sh"]
