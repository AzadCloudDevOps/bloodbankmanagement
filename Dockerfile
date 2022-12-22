From python:3
#RUN pip install django==3.2
RUN python -m pip install -r requirements.txt
COPY . .
RUN python manage.py migrate
CMD ["python", "manage.py" , "runserver", "0.0.0.0:8000"]

