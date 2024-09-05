# official Python image as the base image
FROM python:3.8-slim

# referencing docker compose (see wiki) #
ENV PORT ${port}
ENV HOST ${host}


WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE ${port}

# run dash application
CMD ["python", "app.py"]