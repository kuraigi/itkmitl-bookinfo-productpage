FROM python:3.8


WORKDIR /usr/src/app/

COPY . /usr/src/app/

RUN pip install -r requirements.txt

EXPOSE 8083

CMD ["python", "productpage.py", "8083"]