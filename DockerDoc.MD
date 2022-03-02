Docker:

Docker is an application build and deployment tool. It is based on the idea of that you can package your code with dependencies into a deployable unit called a container. 
In simple terms, Docker is a software platform that simplifies the process of building, running, managing and distributing applications. 
A Docker Container doesn't have any operating system installed and running on it. But it would have a virtual copy of the process table,, network interface(s), and the file system mount point(s).
A container does not have an operating system installed on it. Thus, it consumes very little memory in comparison to a virtual server

Applications with different operating system requirements cannot be hosted together on the same Docker Host.

In simple terms, a Docker Image is a template that contains the application, and all the dependencies required to run that application on Docker.
On the other hand, as stated earlier, a Docker Container is a logical entity. In more precise terms, it is a running instance of the Docker Image.

docker run ubuntu - If we execute the above command, it would start the container and immediately stop it — we wouldn't get any chance to interact with the container at all.

docker run -it ubuntu - If we want to interact with the container, then we need to specify the options: -it (hyphen followed by i and t) to the docker run command presents us with the terminal, using which we could interact with the container by typing in appropriate commands.



Docker Hub is the official online repository where you could find all the Docker Images that are available for us to use.

Docker Engine is one of the core components of Docker. It is responsible for the overall functioning of the Docker platform.
Docker Engine is a client-server based application and consists of 3 main components.
1. Server
2. REST API
3. Client