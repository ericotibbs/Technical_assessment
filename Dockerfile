FROM python:3.6.8-alpine3.9


WORKDIR /var/www/

ADD . /var/www/
RUN pip install -r requirements.txt
RUN pip install gunicorn


EXPOSE 5000

CMD ["python3","app.py"]
