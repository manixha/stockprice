FROM python:3.7
COPY . /stock
WORKDIR /stock
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:stock