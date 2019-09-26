FROM nginx:mainline-alpine

VOLUME [ “/sys/fs/cgroup” ]

RUN rm /etc/nginx/conf.d/*
ADD placeholder.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/

