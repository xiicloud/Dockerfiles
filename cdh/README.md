#Cloudera Manager Server & CDH 5.5.0 Docker image


# 镜像构建

```
cd  cm-cdh-base
docker build  -t  cm-cdh-base  .

cd  cm 
docker build  -t  cm   .

cd  cdh
docker build  -t  cdh  .
```

# 启动容器

使用csphere 自带应用模板功能, 创建一个应用模板, 比如叫做test , 在此模板添加两个服务分别为cm,cdh.
cm 服务启动容器参数, 使用服务名cm 做 主机名
cdh服务启动容器参数,创建一个环境变量: CM_HOST=cm, 指向cloudera manager server 容器的主机名;  使用privilege 模式启动

待相关进程启动后, 可以访问cm 服务的7180 端口, 进入cloudera 管理器面板.

## 首次配置

使用默认用户名,密码: admin,admin 登陆管理控制台, 一路点击continue, 直到出现
Specify hosts for your CDH cluster installation, 在Currently Managed Hosts  标签页面,  勾选连接上来的主机.

当出现,Select Repository, Choose Method  选择  Use Packages

Database Setup,  选 Use Embeded Database ,  点击 Test Connection 

当出现, Review Changes, 默认为 DataNode Default Group, NameNode Default Group, SecondaryNameNode Default Group, NodeManager Default Group 生成的路径前缀 /etc/hostname, /etc/hosts, /etc/resolv.conf, 都是已经存在的文件, 替换成不存在的路径, 比如替换etc 为 data. 然后点击continue, 开始配置启动服务.

