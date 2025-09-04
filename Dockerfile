# Use official Python 3.11 slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source code
COPY . .

# Set default APP_PORT in case environment variable is missing
ENV APP_PORT=5000

# Expose container port (for clarity, optional)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

