FROM atlassian/bamboo-server:6.7.1
MAINTAINER filip.delbaen@rekencentra.be

### EXPOSE 8085

ENV BAMBOO_SERVER_HOME          /var/atlassian/application-data/my-bamboo

USER root

RUN groupmod --gid 12345 bamboo
RUN usermod --uid 12345 bamboo

RUN echo "BAMBOO_USER = ${BAMBOO_USER}"
RUN echo "BAMBOO_GROUP = ${BAMBOO_GROUP}"
RUN echo "BAMBOO_SERVER_HOME = ${BAMBOO_SERVER_HOME}"
RUN echo "BAMBOO_SERVER_INSTALL_DIR = ${BAMBOO_SERVER_INSTALL_DIR}"

COPY my-entrypoint.sh /my-entrypoint.sh
RUN chown ${BAMBOO_USER}:${BAMBOO_GROUP} /my-entrypoint.sh /entrypoint.sh
RUN chmod +x /my-entrypoint.sh /entrypoint.sh

RUN ls -ln /

RUN echo ${BAMBOO_SERVER_HOME}
RUN mkdir --parents ${BAMBOO_SERVER_HOME} 
RUN chown -R ${BAMBOO_USER}:${BAMBOO_GROUP} ${BAMBOO_SERVER_HOME}
### RUN ls -Rln /var/atlassian

RUN echo ${BAMBOO_SERVER_INSTALL_DIR}
RUN mkdir --parents ${BAMBOO_SERVER_INSTALL_DIR} 
RUN chown -R ${BAMBOO_USER}:${BAMBOO_GROUP} ${BAMBOO_SERVER_INSTALL_DIR}
### RUN ls -Rln /opt/atlassian

RUN echo "bamboo.home=${BAMBOO_SERVER_HOME}" > ${BAMBOO_SERVER_INSTALL_DIR}/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties

USER bamboo
ENTRYPOINT ["/my-entrypoint.sh"]

