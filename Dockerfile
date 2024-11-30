FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype
COPY install.sh /install.sh
RUN /install.sh || true
RUN rm -r /install.sh
