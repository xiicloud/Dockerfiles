![jre](https://csphere.cn/assets/e8e58fe7-1b3a-45df-8cb2-0387250938ff)

## 启动一个Java实例

使用JRE镜像最直接的方法是将其看作Java容器的运行时环境。假设Dockerfile同级目录下存在HelloWorld.jar，那么你可以像下面这样编写一个Dockerfile:

```dockerfile
FROM index.csphere.cn/microimages/jre:7
COPY . /app
WORKDIR /app
CMD ["java", "-jar","HelloWorld.jar"]
```

然后可以构建并运行:

```console
$ docker build -t my-java-app .
$ docker run -it --rm --name my-running-app my-java-app
```

默认的环境变量如下：
```console
JAVA_HOME: /usr/lib/jvm/default-jvm
```


## 授权和法律

该镜像由希云制造，未经允许，任何第三方企业和个人，不得重新分发。违者必究。

## 支持和反馈

该镜像由希云为企业客户提供技术支持和保障，任何问题都可以直接反馈到: `docker@csphere.cn`