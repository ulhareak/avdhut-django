
FROM python:latest

WORKDIR /app/

COPY . . 
RUN apt-get update
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python" ,"manage.py" , "runserver"]