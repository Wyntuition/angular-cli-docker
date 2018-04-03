FROM node:8.9-alpine as node-angular-cli

#Linux setup
RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

#Angular CLI
RUN npm install -g @angular/cli@1.6.7

EXPOSE 4200

# Seems to only be needed when serving form a container
#ng serve --port 4200 --host 0.0.0.0

# Run like this:
#   docker run -it -p 4200:4200 -p 80:442 -v $(pwd):/app angular-cli-4200 sh