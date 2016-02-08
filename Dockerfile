FROM postgres:9.5.0

COPY psql.sh /src/psql.sh

WORKDIR /src

CMD ./psql.sh
