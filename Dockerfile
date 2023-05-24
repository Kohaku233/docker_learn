# 使用官方 Python 镜像作为基础镜像
FROM python:3.7-slim-buster

# 设置工作目录
WORKDIR /app

# 将当前目录的内容复制到容器的 /app 目录
COPY . /app

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露端口 80
EXPOSE 80

# 运行 app.py 当容器启动时
CMD ["python", "app.py"]
