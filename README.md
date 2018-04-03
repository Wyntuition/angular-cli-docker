# Dockerfile w/CLI for development, and deployment of Angular apps

Seems to only be needed when serving form a container

`ng serve --port 4200 --host 0.0.0.0`

Build your container for development like this:

  1. `docker build -t angular-cli-4200 .`
  1. `docker run -it -p 4200:4200 -p 80:442 -v $(pwd):/app angular-cli-4200 sh`
  