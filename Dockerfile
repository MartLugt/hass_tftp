ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache tftp-hpa

# VOLUME /share/srv/tftp
# EXPOSE 69/udp

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
