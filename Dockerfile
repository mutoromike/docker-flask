FROM python:3.6.5
MAINTAINER "mikemutoro <mikemutoro@gmail.com>"
LABEL author="mikemutoro"
COPY . /src
WORKDIR /src
RUN pip install requirements.txt
CMD ["/bin/bash", "-c", "python manage.py run -p 5000 -h 0.0.0.0"]
