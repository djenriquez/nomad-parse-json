FROM python:3-slim

ADD parse_json /usr/local/bin

ENTRYPOINT [ "parse_json" ]