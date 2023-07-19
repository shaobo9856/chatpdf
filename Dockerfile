# 使用 Python 3.8 作为基础镜像
FROM python:3.8

# 设置工作目录
WORKDIR /app

# 将 requirements.txt 复制到容器中
COPY requirements.txt .

# 安装依赖项
RUN pip install -r requirements.txt

# 将当前目录中的所有文件复制到容器中的 /app 目录
COPY . .

# 暴露 streamlit 默认端口 8502
EXPOSE 8502

# 运行 streamlit
CMD ["streamlit", "run", "app.py"]
