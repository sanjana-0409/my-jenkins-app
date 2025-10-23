# Use a specific, slim Python image as the base
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your project folder into the container's /app directory
COPY . .

# Install the Python libraries from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Tell Docker the app will use port 5000
EXPOSE 5000

# The command to run when the container starts
CMD ["python","app.py"]