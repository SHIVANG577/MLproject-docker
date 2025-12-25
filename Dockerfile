FROM python:3.8-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y awscli
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 unzip && pip install -r requirements.txt

CMD ["python3", "app.py"]
