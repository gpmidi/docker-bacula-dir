FROM centos:centos7
MAINTAINER Paulson McIntyre, paul+bacula-dir@gpmidi.net

ADD run.sh /run.sh
RUN  chmod 755 /run.sh \
  && chown root:root /run.sh

RUN  yum clean all \
  && yum update -y \
  && yum install -y \
    bacula-director bacula-console bacula-client bacula-libs-sql postgresql-libs \
    vim atop dstat

EXPOSE 9101
VOLUME ["/etc/bacula"]
ENTRYPOINT ["/run.sh"]
