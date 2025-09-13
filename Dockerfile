FROM python:3.12-slim

RUN apt-get update && apt-get install -y python3-venv python3-pip && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /venv && /venv/bin/pip install --upgrade pip

ENV PATH="/venv/bin:$PATH"
