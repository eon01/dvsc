FROM docker:latest
LABEL org.opencontainers.image.authors="aymen@faun.dev"
COPY scripts/dvsc.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/dvsc.sh
CMD ["/bin/sh", "/usr/local/bin/dvsc.sh"]


