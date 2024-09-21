FROM python:3.10
WORKDIR /usr/src/app

# to make stuff deterministic: hash, set iteration order, ...
ENV PYTHONHASHSEED=2385634216

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONIOENCODING=UTF-8

