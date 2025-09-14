FROM python:3.12-slim

RUN apt-get update && apt-get install -y python3-venv python3-pip --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    python3 -m pip install --upgrade pip

WORKDIR /app

COPY . .

CMD ["python3", "src/app.py"]
