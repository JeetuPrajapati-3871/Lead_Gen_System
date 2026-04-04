# Use Python 3.10
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system dependencies for psycopg2
RUN apt-get update && apt-get install -y libpq-dev gcc

# Copy requirements and installdocker-compose down
COPY req.txt .
RUN pip install --no-cache-dir -r req.txt

# Copy the rest of the code
COPY . .

# Expose the port FastAPI runs on
EXPOSE 8000

# Command to run the app
CMD ["uvicorn", "backend:app", "--host", "0.0.0.0", "--port", "8000"]