FROM ubuntu1204-base:latest

# --------------------------------------------------
WORKDIR /opt/myhelloworld
CMD ["./myhelloworld"]

# --------------------------------------------------
COPY myhelloworld /opt/myhelloworld/

