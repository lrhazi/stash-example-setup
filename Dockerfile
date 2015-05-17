FROM ubuntu
COPY atlassian-stash-3.8.0-x64.bin /atlassian-stash-3.8.0-x64.bin
RUN apt-get update && apt-get install -y perl git
RUN chmod +x /atlassian-stash-3.8.0-x64.bin && /atlassian-stash-3.8.0-x64.bin -q
COPY server.xml /opt/atlassian/stash/conf/server.xml
#VOLUME /opt/atlassian/stash/3.8.0/logs
#VOLUME /var/atlassian/application-data/stash
RUN rm -f /atlassian-stash-3.8.0-x64.bin
CMD /opt/atlassian/stash/3.8.0/bin/start-stash.sh -fg
