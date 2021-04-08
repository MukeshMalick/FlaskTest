FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 9090
ENTRYPOINT [ "python3" ]
CMD [ "hello.py" ]

