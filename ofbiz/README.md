#Apache Ofbiz Docker image


# 镜像构建

```
docker build  -t  ofbiz  .

```

# 启动容器

```
docker run -d  --name ofbiz  -p 8443:8443  ofbiz

```

打开浏览器访问https://{ip_of_container}:8443/catalog, 用户名: admin, 密码: ofbiz
