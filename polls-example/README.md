# django-polls-example

django官方投票程序示例。

源码结构：

```shell
mysite/
├── db.sqlite3
├── manage.py
├── mysite
│   ├── asgi.py
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── polls
│   ├── admin.py
│   ├── apps.py
│   ├── __init__.py
│   ├── migrations
│   ├── models.py
│   ├── static
│   ├── templates
│   ├── tests.py
│   ├── urls.py
│   └── views.py
└── requirements.txt
```

## getting-started

docker快速开始.

1、构建docker镜像
```shell
git clone https://github.com/willzhang/django-examples.git
cd django-examples/polls-example

docker build -t willdockerhub/django:polls .
docker push willdockerhub/django:polls
```

2、运行polls app
```shell
docker run -d --name polls \
 --restart always \
 -p 8000:8000 \
 willdockerhub/django:polls
```
 
3、浏览器访问polls polls页面：
```shell
http://127.0.0.1:8000/polls/
```
 
[![6YOzT0.png](https://s3.ax1x.com/2021/03/11/6YOzT0.png)](https://imgtu.com/i/6YOzT0)


4、浏览器访问polls app管理界面

```shell
http://127.0.0.1:8000/admin/
```

默认账号admin/123456

[![6YXpkV.png](https://s3.ax1x.com/2021/03/11/6YXpkV.png)](https://imgtu.com/i/6YXpkV)

