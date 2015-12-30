FROM mrobson/fuse-base-install:6.2.1.84

MAINTAINER Matthew Robson <matthewrobson@gmail.com>

USER 1000

EXPOSE 8181 1099 2181 2182 2888 3888 44444 8101

WORKDIR /opt/fuse/${FUSE_ARTIFACT}

COPY scripts/fabric8.sh /opt/fuse/jboss-fuse-full/bin/fabric8.sh

RUN chmod +x /opt/fuse/jboss-fuse-full/bin/fabric8.sh

ENTRYPOINT ["/opt/fuse/jboss-fuse-full/bin/fabric8.sh"]
