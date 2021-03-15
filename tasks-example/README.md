# django-polls-example

django官方投票程序示例。

源码结构：

```shell
myproject/
├── manage.py
├── myproject
│   ├── asgi.py
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── requirements.txt
└── tasks
    ├── admin.py
    ├── apps.py
    ├── forms.py
    ├── __init__.py
    ├── migrations
    │   ├── 0001_initial.py
    │   └── __init__.py
    ├── models.py
    ├── templates
    │   └── tasks
    │       ├── task_detail.html
    │       ├── task_form.html
    │       └── task_list.html
    ├── tests.py
    ├── urls.py
    └── views.py
```

## getting-started

docker快速开始.

1、构建docker镜像
```shell
git clone https://github.com/willzhang/django-examples.git
cd django-examples/tasks-example

docker build -t willdockerhub/django:tasks .
docker push willdockerhub/django:tasks
```

2、运行polls app
```shell
docker run -d --name polls \
 --restart always \
 -p 8000:8000 \
 willdockerhub/django:tasks
```
 
3、浏览器访问polls app页面：
```shell
http://127.0.0.1:8000/tasks/
```

