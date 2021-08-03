FROM node:12-buster
# RUN apk add libusb g++ make git python3 libstdc++ linux-headers eudev-dev usbutils libc-dev
RUN apt update && apt install -y libhidapi-libusb0 libkrb5-3 g++ make python
WORKDIR /usr/src/app
COPY --chown=node:node . /usr/src/app
RUN yarn
USER node
CMD "yarn" "start"
