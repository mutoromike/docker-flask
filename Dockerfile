FROM python:3.8-slim-bullseye

ENV PYTHONBUFFERED 1

LABEL MAINTAINER "mikemutoro <mikemutoro@gmail.com>"
LABEL author="mikemutoro"
COPY . /src
WORKDIR /src
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["/bin/bash", "-c", "python manage.py run -p 5000 -h 0.0.0.0"]

RUN python app.py