FROM python:3
RUN pip3 install django==2.1.*

COPY . . 

RUN python manage.py migrate

CMD ["python","manage.py","makemigrations","migrate","createsuperuser","runserver",,"0.0.0.0:8000"]
