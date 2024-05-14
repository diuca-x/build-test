FROM python:3.7

WORKDIR /backend

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

#develop
CMD ["python", "app.py"]

#production
#CMD ["uwsgi", "uwsgi.ini"]
