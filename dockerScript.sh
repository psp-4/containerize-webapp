#Building Image from the Dockerfile
docker build -t myimage .

#Running Containers
docker run -d --name mycontainer -p 9005:80 myimage

echo "Host PORT 9005 is mapped to container PORT"