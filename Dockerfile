FROM python:3.6-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        gcc \
        build-essential \
        python3-setuptools \
    && rm -rf /var/lib/apt/lists/*

ADD . /XSStrike
RUN pip install -r /XSStrike/requirements.txt
WORKDIR /XSStrike

ENTRYPOINT ["python", "xsstrike.py"]
