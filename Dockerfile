FROM alpine:latest

MAINTAINER Carlos Muñoz - https://github.com/cmunozgar/

RUN apk --update --no-progress --no-cache add nodejs

RUN npm install -g mjml@4.0.5

# adding mjml to bin
ENV PATH $PATH:/node_modules/mjml/lib

RUN adduser -H -D -u 1000 mjml

ADD entrypoint.sh /entrypoint.sh

USER mjml

ENTRYPOINT ["/entrypoint.sh"]

