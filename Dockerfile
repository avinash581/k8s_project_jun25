FROM python:3.8

WORKDIR /app

# FIXED: Provide destination explicitly
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# COPY entire source into container
COPY . .

CMD ["python", "app.py"]
