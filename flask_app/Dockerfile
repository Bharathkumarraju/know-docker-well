FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y python3-dev python3-pip

COPY requirements.txt /python-app/

WORKDIR /python-app

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python3", "app.py"]