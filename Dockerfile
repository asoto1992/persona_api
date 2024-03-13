FROM python:3.9-slim
 
# Set the working directory in the container (Folder de Trabajo del Docker)
WORKDIR /app
 
# Copy the current directory contents into the container at /app (COPIA TODOS LOS ARCHIVOS A /app)
COPY . /app

COPY requerimientos.txt /app
 
# Install any needed packages specified in requirements.txt
# EJECUTA LOS REQUERIMIENTOS EN EL ARCHIVO requerimientos.txt
RUN pip install --no-cache-dir -r requeirimientos.txt

 
# Make port 8080 available to the world outside this container
EXPOSE 8080
 
# Define environment variable
ENV PORT 8080
 
# Run app.py when the container launches
CMD ["python", "app.py"]


