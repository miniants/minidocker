docker run -d --privileged --name oracle11g -p 1521:1521 \
  -v /datas/oracle/install:/install -v /datas/oracle/dpdump:/opt/oracle/dpdump \
  jaspeen/oracle-11g