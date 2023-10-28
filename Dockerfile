FROM python:3.10-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U pip
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD python3 -m AnonXMusic
