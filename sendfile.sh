#!/bin/bash
tag=`git tag|tail -n 1`
/usr/sbin/sendmail -t <<EOF
From:Jenkins <948909815@qq.com>
To: yachuan.an@fancapital.com
Cc: yachuan.an@fancapital.com
Subject: test mail

---------------------
Date:$(date +%Y%m%d)
git Tag:$tag
---------------------
EOF

