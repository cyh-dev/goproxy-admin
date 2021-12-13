FROM centos:7

RUN mkdir -p /data/proxy-admin
WORKDIR /data/proxy-admin

COPY ./ ./
RUN ./proxy-admin install
RUN cp app.toml /etc/gpa/app.toml

CMD ["./proxy-admin"]
