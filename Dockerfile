FROM python:3.11-slim-bullseye
WORKDIR /app
COPY . /app

RUN pip install awscli && pip install -r requirements.txt

RUN pip install -r requirements.txt
CMD ["python3", "app.py"]