FROM python:3
RUN pip install django==3.2

COPY ..

RUN python mange.py migrate
EXPOSE 8000
CMD ["python","mange.py","runserver","0.0.0.0:8000"]

