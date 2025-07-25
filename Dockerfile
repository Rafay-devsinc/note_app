
# FROM python:3.7-slim


# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1


# WORKDIR /app


# RUN apt-get update && apt-get install -y \
#     build-essential \
#     libpq-dev \
#     && rm -rf /var/lib/apt/lists/*


# COPY requirements.txt /app/
# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt


# COPY . /app/


# EXPOSE 8000


# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]















FROM python:3.7-slim




WORKDIR /app




COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY . /app/


EXPOSE 8000


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
