FROM python:alpine

WORKDIR /src

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY buzz ./buzz

COPY app.py .

CMD ["python", "app.py"]
