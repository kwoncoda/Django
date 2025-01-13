# 장고는 alpine이미지가 유리
# C파일이 있다면 실행속도는 매우 늦어짐
FROM python:3.10.12-alpine

WORKDIR /dockerapp

# .pyc파일 생성되지 않도록록
ENV PYTHONDONTWRITEBYTECODE 1
# 파이썬 로그 즉각 출력
ENV PYTHONUNBUFFERED 1

COPY . /dockerapp/

RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt