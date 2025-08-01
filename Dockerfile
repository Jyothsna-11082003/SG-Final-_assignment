# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the code
COPY . .

# Set environment variable
ENV PYTHONPATH=.

# Command to run the app
CMD ["python", "app/app.py"]
