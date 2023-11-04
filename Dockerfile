FROM docker:latest
LABEL org.opencontainers.image.authors="aymen@faun.dev"
COPY scripts/calculate-dangling-volumes-size.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/calculate-dangling-volumes-size.sh
CMD ["/usr/local/bin/calculate-dangling-volumes-size.sh"]

