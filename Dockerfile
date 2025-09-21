FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY app /app/app
COPY .env.example /app/.env.example

ENV PYTHONUNBUFFERED=1
CMD ["python", "-u", "app/main.py"]
