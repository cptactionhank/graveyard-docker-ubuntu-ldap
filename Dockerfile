FROM ubuntu:trusty
MAINTAINER cptactionhank <cptactionhank@users.noreply.github.com>

RUN apt-get update -qq \
    && apt-get -yqq install libnss-ldap ldap-utils \
    && auth-client-config -t nss -p lac_ldap
