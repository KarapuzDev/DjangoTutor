FROM python:3.8
ENV PYTHONUNBUFFERD 1
WORKDIR /app

COPY requirements.txt ./
#COPY entrypoint.sh .

RUN pip install -r requirements.txt
#RUN chomd +x entrypoint.sh

COPY ./ /app

CMD python manage.py runserver 0.0.0.0:8000