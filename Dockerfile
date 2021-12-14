FROM centos:7

ENV TZ Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

RUN mkdir -p /data/proxy-admin
WORKDIR /data/proxy-admin

COPY ./ ./
RUN ./proxy-admin install
RUN mv /etc/gpa/app.toml /etc/gpa/app.toml.bak
RUN cp app.toml /etc/gpa/app.toml

CMD ["./proxy-admin"]
