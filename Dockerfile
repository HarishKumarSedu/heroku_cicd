FROM python:3.7
COPY . /app
COPY requirements.txt .
WORKDIR /app

RUN python -m pip install --upgrade pip  
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app