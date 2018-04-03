# Dockerfile w/CLI for development, and deployment of Angular apps

## Build & run your container for development like this:

1. Build the image: `docker build -t angular-cli-4200 .`
1. Run the image: `docker run -it -p 4200:4200 -p 80:442 -v $(pwd):/app angular-cli-4200 sh`
  
## Build and run an Angular app inside it

1. Generate an app: `ng new <app name>  --routing`

1. Build and run app (seems to only be needed when serving form a container):

    `ng serve --port 4200 --host 0.0.0.0`
