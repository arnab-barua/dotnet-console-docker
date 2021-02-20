# dotnet-console-docker
Sample .Net console application with docker


Clone

Create an image
    docker build -t docker-console .

Create a container from this image
    docker create --name SampleConsole docker-console

Start the container
    docker start SampleConsole