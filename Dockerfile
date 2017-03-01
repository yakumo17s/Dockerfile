FROM docker/whalesay:latest
RUN deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
RUN  apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
