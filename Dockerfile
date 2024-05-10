FROM python:3.13.0b1-alpine
LABEL maintainer="giri-sh"

COPY ./techtrends /workspace

WORKDIR /workspace

RUN pip3 install -r requirements.txt && \
    python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]