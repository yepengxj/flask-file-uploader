FROM library/python:2

RUN mkdir /flask-file-uploader/
ADD . /flask-file-uploader/
WORKDIR /flask-file-uploader
RUN apt-get update && apt-get install libjpeg-dev -y

RUN pip install -r requirements.txt
EXPOSE 9191
CMD python ./app.py

