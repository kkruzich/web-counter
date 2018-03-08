
# Web Counter

A simple Python web app (Flask) to demonstrate linking docker containers. This app and container are also used
to demonstrate Jenkins CI/CD. 

Run the provided shell script or follow the docker commands noted below:

    # ./makeapp.sh

Build a docker image for the application:

    # docker build -t myapp .

Run a redis container. The container will export port 6379:

    # docker run --name redis -d redis

Run the application and link with the redis container:

    # docker run --name myapp --link redis:redis \
      -p 5000:5000 -d myapp python app.py

The app is now listening on port 5000:

    # curl <hostname>:5000
    Hello World! Counter: 1

To stop/remove containers:

    # docker ps -a
    # docker stop myapp redis
    # docker rm myapp redis
    # docker ps -a

To remove images:

    # docker images
    # docker rmi myapp redis
    # docker images
