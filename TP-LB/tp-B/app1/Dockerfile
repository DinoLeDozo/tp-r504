FROM python:3
COPY ./requirements.txt /requirement.txt
WORKDIR /
RUN pip install -r requirements.txt
COPY . /
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
