FROM python:3.8-slim

# Folder de Trabajo
WORKDIR /app

# COPIA TODOS LOS ARCHIVOS A /app
COPY .  /app

# EJECUTA LOS REQUERIMIENTOS EN EL ARCHIVO requerimientos.txt
RUN pip install -r requerimientos.txt

EXPOSE 80

ENV NAME world

CMD["python","app.py"]

