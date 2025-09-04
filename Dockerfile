FROM python:3.11-slim

# Install curl for smoke tests
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Set default APP_PORT in case .env is missing
ENV APP_PORT=5000

CMD ["python", "app.py"]

