FROM python:3.7
RUN pip install mkdocs
RUN mkdir /app
WORKDIR /app
ADD mkdockerize.sh /
RUN chmod 755 /mkdockerize.sh
#CMD bash -x /mkdockerize.sh
ENTRYPOINT ["/mkdockerize.sh"]
