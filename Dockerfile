FROM centos:7

ENV TZ Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

RUN mkdir -p /data/proxy-admin
WORKDIR /data/proxy-admin

COPY ./ ./
RUN mkdir -p /etc/gpa
RUN cp app.toml /etc/gpa/app.toml

CMD ["./proxy-admin"]
