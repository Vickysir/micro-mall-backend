#制定node镜像的版本
FROM node:8.9-alpine
#声明作者
MAINTAINER vicky


# create app directory
RUN mkdir -p /home/service
#进入到app目录下面，类似cd
WORKDIR /home/service

#Bundle app source
COPY . /home/service

#安装依赖
RUN npm install
#对外暴露的端口
EXPOSE 8888
#程序启动脚本
CMD ["npm", "start"]