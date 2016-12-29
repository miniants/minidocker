From registry.cn-hangzhou.aliyuncs.com/miniants/centos:7.2
MAINTAINER xinxinran
ADD GraphicsMagick-1.3.25.tar.gz ./GraphicsMagick-1.3.25
#RUN yum clean all && yum install -y libpng-devel libpng libjpeg libjpeg-devel libpng libpng-devel libtiff-devel libtiff libwmf-devel libwmf libxml2-devel libxml2 zlib-devel zlib gd-devel gd bzip2 bzip2-devel libzip-devel libzip perl pcre pcre-devel openssl openssl-devel
RUN yum install -y yum-plugin-ovl
RUN yum install -y bzip2-devel gd gd-devel libtiff libtiff-devel libwmf libwmf-devel libxml2-devel libzip libzip-devel pcre pcre-devel openssl-devel openssl  && yum clean all
WORKDIR ./GraphicsMagick-1.3.25/GraphicsMagick-1.3.25
RUN pwd && ls -l
RUN /bin/sh ./configure --prefix=/usr/local/GraphicsMagick --disable-static --enable-openmp --enable-shared --enable-symbol-prefix
RUN make && make install
WORKDIR ../../
RUN echo "GM_HOME=/usr/local/GraphicsMagick" >> /etc/profile
RUN echo "PATH=$GM_HOME/bin:$PATH" >> /etc/profile
RUN echo "export PATH GM_HOME" >> /etc/profile
RUN source /etc/profile
RUN curl -o openresty-1.9.15.1.tar.gz https://openresty.org/download/openresty-1.9.15.1.tar.gz
RUN tar zxvf openresty-1.9.15.1.tar.gz
ADD ngx_cache_purge-master.tar.gz ./ngx_cache_purge-master
WORKDIR ./openresty-1.9.15.1
RUN  ./configure --with-pcre --with-luajit --with-cc-opt="-I/usr/include/openssl/" --with-ld-opt="-L/usr/lib64/openssl/"  --with-http_dav_module --with-http_stub_status_module --add-module=/ngx_cache_purge-master/ngx_cache_purge-master
RUN make && make install
EXPOSE 80

ENTRYPOINT ["/usr/local/openresty/nginx/sbin/nginx"]
#CMD ["/usr/local/openresty/nginx/sbin/nginx"]
