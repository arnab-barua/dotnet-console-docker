# dotnet-console-docker
Sample .Net console application with docker


1. Clone 

2. Create an image
<br />
\t docker build -t docker-console .

3. Create a container from this image
<br />
\t docker create --name SampleConsole docker-console

4. Start the container
<br />
\t docker start SampleConsole