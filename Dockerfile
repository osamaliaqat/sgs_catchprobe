FROM alpine

RUN apk add --no-cache python3-dev && apt-get install python-pip && pip install --upgrade pip
WORKDIR /sgs_catchprobe

COPY /requirements.txt /sgs_catchprobe

RUN pip install -r requirements.txt

COPY ["api.py", "/sgs_catchprobe"]

EXPOSE 5001

ENTRYPOINT [ "python3" ]

CMD ["api.py"]
