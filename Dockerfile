FROM daocloud.io/python:2.7
MAINTAINER Captain Dao <support@daocloud.io>

RUN mkdir -p /app
WORKDIR /app

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install pandas=0.17.1
RUN pip install scikit-learn=0.17.1
RUN pip install requests


COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8888
ENTRYPOINT ["docker-entrypoint.sh"]
CMD [""]
