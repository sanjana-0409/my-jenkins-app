# Use a specific, slim Python image as the base
FROM python:3.9-slim-buster [cite: 219]

# Set the working directory inside the container
WORKDIR /app [cite: 220]

# Copy all files from your project folder into the container's /app directory
COPY . .

# Install the Python libraries from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt [cite: 222]

# Tell Docker the app will use port 5000
EXPOSE 5000 [cite: 223]

# The command to run when the container starts
CMD ["python","app.py"] [cite: 224]