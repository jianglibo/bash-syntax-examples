
### 常见的curl用法
#using Ctrl-z to revert to previous contents.

# 1. 下载文件
curl -O http://www.example.com/file.zip # -O: 保存文件的名字为远程文件的名字
curl -L -o xyz.ip file.zip http://www.example.com/file.zip # -L: 跟随重定向 -o: 保存文件的名字为xyz.ip

# 2. 上传文件
curl -F "file=@localfile;filename=remotefile" http://www.example.com/upload.php # -F: 上传文件，格式是multipart/form-data
# urlencoded
curl -d "name=abc&password=123" http://www.example.com/login.php # -d: 上传数据，格式是application/x-www-form-urlencoded
# multiple -d
curl -d "name=abc" -d "password=123" http://www.example.com/login.php
# raw body
curl -d @data.txt http://www.example.com/login.php # -d: 上传数据，格式是raw body
# json body
curl -d '{"name":"abc","password":"123"}' http://www.example.com/login.php # -d: 上传数据，格式是json body
# json content from file as body
curl -d @data.json http://www.example.com/login.php # -d: 上传数据，格式是json body

# http header
curl -H "Content-Type: application/json" http://www.example.com/login.php # -H: 设置http header
# basica authentication
curl -u "username:password" http://www.example.com/login.php # -u: 设置basic authentication
# cookie
curl -b "name=abc;password=123" http://www.example.com/login.php # -b: 设置cookie
# referer
curl -e "http://www.example.com" http://www.example.com/login.php # -e: 设置referer
# user agent
curl -A "Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0" http://www.example.com/login.php # -A: 设置user agent
# proxy
curl -x "http://abc.proxy.com:8080" http://www.example.com/login.php # -x: 设置proxy


