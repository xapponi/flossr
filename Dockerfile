FROM python:3.9.1
ADD ./keys/flossr-3bc6e0ddc007.json /key/google_key.json
ENV GOOGLE_APPLICATION_CREDENTIALS="/key/google_key.json"
ADD ./web_app /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN mkdir /photos
CMD [ "python3", "app.py"]