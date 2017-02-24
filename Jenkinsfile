stage 'build'
node {
	git 'https://github.com/fancapital/myhelloworld.git'
	sh '''
		tag=`git tag`
		imageid=`ssh root@192.168.0.1 docker images | grep myhelloworld | awk '{print $3}'`
		tar zcvf myhelloworld.tar.gz *
		scp myhelloworld.tar.gz root@192.168.168.0.1:/home/item/
		ssh root@192.168.0.1 "docker rmi $imageid;cd /home/item;tar zxvf myhelloworld.tar.gz;make;docker build -t 118.178.135.157:5000/item/myhelloworld:$tag .;docker login --username pftz --password Pftz8888 118.178.135.157:5000;docker push 118.178.135.157:5000/item/myhelloworld:$tag;rm -rf *"
		rm -rf myhelloworld.tar.gz
	    '''
}

