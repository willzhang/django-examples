# django-library

适合小白的django示例app-图书管理系统，支持书籍增删改查！

## getting-started

运行app
```
docker run -d --name django-library \
 --restart always \
 -p 8000:8000 \
 willdockerhub/django-library
```
 
浏览器访问app
```
http://127.0.0.1:8000/books/
```
 
books页面：
 
[![yqVrPP.png](https://s3.ax1x.com/2021/02/23/yqVrPP.png)](https://imgchr.com/i/yqVrPP)
 
## 使用mysql数据库
 
运行mysql数据库
```
 docker run -d --name mysql \
  --restart always \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -e MYSQL_DATABASE=library \
  -e MYSQL_USER=library \
  -e MYSQL_PASSWORD=library123 \
  -v mysql:/var/lib/mysql \
  mysql:8.0.23 --default-authentication-plugin=mysql_native_password
```
 
创建settings.py配置文件
 ```
 mkdir -p /data/django-library/conf/
 ```

修改settings.py配置文件
```
 DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'library',
        'USER': 'library',
        'PASSWORD': 'library123',
        'HOST': '172.29.118.192',
        'PORT': 3306
    }
}
```
 
运行django-library,
```
docker run -d --name django-library \
  --restart always \
  -p 8000:8000 \
  -v /data/django-library/conf/settings.py:/code/library/settings.py \
  willdockerhub/django-library 
```
 
 
参考：https://www.bilibili.com/video/BV12y4y1z72Q
