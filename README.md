# Containerize a simple Webapp and push it to Dockerhub
---
1.   Login to your Linux Machine(Debian-based only).
2.   Clone this repository to your machine using

     ```
     git clone https://github.com/psp-4/containerize-webapp.git
     ```
3.   Give executable permissions to the scripts by the following command

     ```
     chmod +x web_files.sh dockerScript.sh
     ```
4.   Run the ```web_files.sh``` script first to fetch the webfiles. Use the following command.
   
     ```
     ./web_files.sh
     ```
5.   Run the ```dockerScript.sh``` script to build the image and run containers from the image. Use the following command.
 
     ```
     ./dockerScript.sh
     ```
6.   Check the deployment by the URL ```<your machine IP>:PORT```.

     *(Here the PORT is ```9005``` and you can change it by changing the port mapping in Dockerfile)*


7.   To push the image to Dockerhub create a new Docker hub account.
8.   There create a new repository with a unique name.
9.   Change directory to the directoryBuild the docker image as the name ```<your_user_name_of_Dockerhub>/<image_name>``` using the command as follows:

     ```
     docker build -t <dockerhub_user_name>/<image_name> .
     ```
10.  Login to docker account from terminal using your username and password using the command
    
      ```
      docker login
      ```
11.  Now push the image to DockerHub using the command

      ```
      docker push <dockerhub_user_name>/<image_name>:latest
      ```
12.  Now anyone on the internet can use your image by using the command

      ```
      docker pull <dockerhub_user_name>/<image_name>:latest
      ```
      *(For reference you can use my image by ```docker pull psp4/cleanimg:latest``` from a docker engine)*
