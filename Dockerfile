FROM library/python

RUN mkdir /flask-file-uploader/
ADD . /flask-file-uploader/
WORKDIR /flask-file-uploader
RUN apt-get update && apt-get install libjpeg-de

RUN pip install -r requirements.txt

CMD ./app.py

