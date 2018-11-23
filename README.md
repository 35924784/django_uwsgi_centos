# django_uwsgi_centos
centos+django+uwsgi+nginx部署


使用centos+django+uwsgi+nginx部署

1、git clone https://github.com/35924784/django_uwsgi_centos到本地目录中。
2、cd 你的目录/django_uwsgi_centos
3、dockr-compose up --build
- 如出现下面提示信息说明启动成功：
```
Attaching to django_uwsgi
django_uwsgi    | [uWSGI] getting INI configuration from 你的项目路径/uwsgi.ini
django_uwsgi    | 
django_uwsgi    | 0 static files copied to '/usr/local/nginx/html/dailyfresh/static', 1010 unmodified.
django_uwsgi    | Could not load host key: /etc/ssh/ssh_host_ecdsa_key
django_uwsgi    | Could not load host key: /etc/ssh/ssh_host_ed25519_key
```
4、在浏览器中输入：http://localhost:8805 可看到项目运行效果。
5、支持使用ssh工具通过10022端口进入，用户名密码：root/123456


目录结构：

```
├── Dockerfile
├── docker
│   └── run.sh
├── docker-compose.yml
├── nginx
│   ├── conf
│   └── html
├── project
│   └── MxOnline
└── software


```
