FROM ubuntu:16.04

# --------------------------------------------------
WORKDIR /opt/myhelloworld
CMD ["./myhelloworld"]

# --------------------------------------------------
COPY myhelloworld /opt/myhelloworld/

