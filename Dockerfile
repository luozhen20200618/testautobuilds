FROM centos:7.9.2009
MAINTAINER luozhen<2780601@qq.com>
COPY ./nginx.repo /etc/yum.repos.d/
RUN yum makecache
RUN yum install -y nginx
RUN yum -y install vim 
RUN echo "Hello!!!! This is nginx server0333" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
