#FROM centos/centos
FROM quay.io/centos/centos:7
MAINTAINER MA sharif <masharif46@yahoo.com>
LABEL descreptaion "This is Test nginx"
copy ./repo.repo /etc/yum.repos.d/
RUN yum install https://nginx.org/packages/rhel/7/x86_64/RPMS/nginx-1.22.0-1.el7.ngx.x86_64.rpm -y && \
mkdir -p /var/www/html/whm && \
yum install unzip -y  && \
echo "Welcome to nginx my Docker" > /usr/share/nginx/html/index.html
ADD whmcs.tar /var/www/html
ADD whmcs.zip whmcs.zip
RUN unzip whmcs.zip
RUN unzip whmcs.zip -d /var/www/html/whm/
expose 80
#ENTRYPOINT ["touch test"]
CMD ["nginx", "-g", "daemon off;"]




