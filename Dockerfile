# official Python image as the base image
FROM python:3.8-slim

# referencing docker compose (find wiki) #
ENV port ${port}
ENV port ${host}

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE ${PORT}

# run dash application
CMD ["python3", "app.py"]