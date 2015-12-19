niants.cn>

set -e

#如果使用参数化构建，则使用jenkins的参数，否则请手动配置
#ARTIFACTID='boot'
#PORT=8010
#ENV=stage

echo current dir is $(pwd)
cd ./${ARTIFACTID}
echo current dir is $(pwd)

CONTAINERNAME=${ARTIFACTID}_${ENV}
buildwar=${ARTIFACTID}.war
targetwar=target/${buildwar}

#准备Dockerfile文件
if [[ -e ./Dockerfile ]];then
        echo "use Dockfile from dir: ./"
else
        echo FROM       miniants/tomcat:8.0.30 > Dockerfile
        echo "make & use new Dockerfile from current"
fi

#准备war文件
if [[ -e ${targetwar} ]];then
        echo has ${targetwar},build conitue
        cp ${targetwar} ./
        docker build -t miniants/${ARTIFACTID}:latest .
        rm -f ${buildwar}
else
        echo has not ${targetwar},build exit
        rm -f ${buildwar}
        exit -1
fi

#重启容器
#删除正在运行的容器，此命令要特别谨慎
oldcid=$(docker ps -a -q -f name=${CONTAINERNAME})
if [ ${oldcid} ];then
        echo found the old container:${oldcid} need to remove...
        docker rm -f ${oldcid}
        echo "success docker rm -f old container:${oldcid}"
fi
cid=$(docker run -d -p ${PORT}:8080 --name ${CONTAINERNAME} miniants/${ARTIFACTID}:latest)
echo "finished run container for stage ${CONTAINERNAME}:${cid}"

exit 0

