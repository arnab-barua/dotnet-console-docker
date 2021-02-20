# dotnet-console-docker
Sample .Net console application with docker


1. Clone 

2. Create an image
&nbsp;&nbsp;&nbsp;&nbsp; docker build -t docker-console .

3. Create a container from this image
&nbsp;&nbsp;&nbsp;&nbsp; docker create --name SampleConsole docker-console

4. Start the container
&nbsp;&nbsp;&nbsp;&nbsp; docker start SampleConsole