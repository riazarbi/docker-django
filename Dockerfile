FROM python:3.8

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nano \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

RUN django-admin startproject app

WORKDIR /usr/src/app

#EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["/bin/bash"]
