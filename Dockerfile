FROM ubuntu:16.04


RUN apt-get update -y && \
    
	apt-get install -y python-pip python-dev


COPY ./requirements.txt /app/requirements.txt


WORKDIR /app


RUN pip install -r requirements.txt


EXPOSE 5001
COPY . /app


ENV FLASK_APP=app


ENV FLASK_RUN_PORT=5001
CMD [ "flask", "run", "--host", "0.0.0.0" ]

