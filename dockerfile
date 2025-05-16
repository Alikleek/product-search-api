# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 8000

# Set environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Command to run the application (update as needed)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]