FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# Set default APP_PORT in case .env is missing
ENV APP_PORT=5000
CMD ["python", "app.py"]

