FROM alpine:3.5
RUN apk add --update python py-pip
RUN pip install --upgrade pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
COPY static /src/static
COPY templates /src/templates
# CMD python /src/app.py
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload