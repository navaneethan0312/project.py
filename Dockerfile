FROM python:3.12

WORKDIR /app

RUN apt-get update && apt-get install -y python3-venv

COPY requirements.txt ./
RUN python3 -m venv venv && ./venv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["./venv/bin/python", "src/app.py"]
