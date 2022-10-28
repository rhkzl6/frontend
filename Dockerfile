FROM nginx:latest
EXPOSE 80
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apt update && apt install wget
RUN chmod 750 /home/user
ADD *.html /usr/share/nginx/html/
CMD wget http://100.100.100.100:8888/default.conf -O /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

# CMD wget http://192.168.123.124:8888/default.conf -O /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

#sadasdddcc