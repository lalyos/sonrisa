FROM ubuntu:22.04
#FROM ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9
RUN apt-get update -qq \
  && apt-get install -y \
    curl \
    nginx
COPY start.sh /
RUN chmod +x /start.sh
EXPOSE 80
CMD [ "/start.sh" ]