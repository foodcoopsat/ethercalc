FROM node:14-alpine3.13

ENV NODE_ENV production

ENV ETHERCALC_VERSION 0.20201228.1

RUN set -ex \
  && npm -g install ethercalc@${ETHERCALC_VERSION} \
  && adduser -D -s /bin/false ethercalc

USER ethercalc

EXPOSE 8000
CMD ["ethercalc"]
