FROM websphere-liberty:webProfile7

WORKDIR /config

ADD server.xml /config/serverX.xml

ADD target/CloudTrader-0.0.1-SNAPSHOT.war /config/dropins/CloudTrader.war

RUN mkdir -p /opt/ibm/wlp/usr/shared/resources/db2
ADD db2jcc4.jar /opt/ibm/wlp/usr/shared/resources/db2/

ADD startjava.sh /config

CMD ["/config/startjava.sh"]
