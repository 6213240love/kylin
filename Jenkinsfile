stage 'build'
node {
	git 'https://github.com/6213240love/kylin.git'
	sh '''
		tag=`git tag|tail -n 1`
		imageid=`ssh root@192.168.0.1 docker images | grep myhelloworld | awk '{print $3}'`
		tar zcvf myhelloworld.tar.gz *
		scp myhelloworld.tar.gz root@192.168.0.1:/home/item/
		ssh root@192.168.0.1 "docker rmi $imageid;cd /home/item;tar zxvf myhelloworld.tar.gz;make;docker build -t 118.178.135.157:5000/item/myhelloworld:$tag .;docker login --username pftz --password Pftz8888 118.178.135.157:5000;docker push 118.178.135.157:5000/item/myhelloworld:$tag;rm -rf *"
		rm -rf myhelloworld.tar.gz
	    '''
}

stage 'Mail'
node {
	sh '''
		tag=`git tag|tail -n 1`
		/usr/sbin/sendmail -t <<EOF
		From:Jenkins <948909815@qq.com>
		To: yachuan.an@fancapital.com
		Cc: yachuan.an@fancapital.com
		Bcc: yachuan.an@fancapital.com
		Subject: test mail

		---------------------
		Date:$(date +%Y%m%d)
		git Tag:$tag
		---------------------
		EOF
	   '''
}
