##edited##

# (common errors)

  #  image source will not be copied in terminal text editor  if the link is too long
  # image problem solution : visit https://hmp.me/ upload the picture and get short url and paste in html file


# whole process is as shown below


# docker login

#Pulling NGINX image
docker pull nginx

#running the nginx image and assigning a name to the container
docker run -it -p 80:80 --name nginx1 nginx

#OR, to run in detached mode
docker run -d -p 80:80 --name nginx1 nginx

#optional command: curl localhost:80 in a separate terminal

#open a separate terminal tab and run these commands

#start the container, if needed
docker start nginx1

#docker ps shows a list of containers running
docker ps

#to log into a container
docker exec -it nginx1 bash

#change to correct path
cd usr/share/nginx/html/

#view the default index.html - this is displayed in your browser once NGINX is succesfully up and running
cat index.html

#open browser type
 0.0.0.0
 
#default html page is displayed

# log into a container
docker exec -it nginx1 bash

#change to correct path
cd usr/share/nginx/html/

# overwrite index.html file
cat > index.html

#paste your html code

#exit 
ctrl+D

#open browser type (refresh)
 0.0.0.0
 
 #tag your nginx file
 docker tag <image ID> <dockerhub username>/<image>:<tag>
 
 example:
 
 docker tag 5a3221f0137b srikars2001/nginx:group8
 
 #push image to docker hub
 docker push your_username/image_name:version
 
example:
          docker push srikars2001/nginx:group8
     
 #  voila assignment completed!!!!!




