FROM registry.access.redhat.com/ubi8/ubi
LABEL maintainer="grant.steinfeld.tech@gmail.com"
RUN yum install -y python3; yum clean all
WORKDIR /app
COPY ./src /app/src
EXPOSE 7777
ENTRYPOINT ["python3"]
CMD ["src/main.py"]
