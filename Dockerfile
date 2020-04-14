FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /demo
WORKDIR /demo 
RUN pip install Flask 
ENTRYPOINT ["python", "app.py"]
