FROM python:3.8.2-alpine
RUN mkdir -p ./conf
WORKDIR  ./app
COPY . /app
COPY config.ini /conf
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
CMD ["python", "/app/mailproxy.py", "/conf/config.ini"]
EXPOSE 2525
