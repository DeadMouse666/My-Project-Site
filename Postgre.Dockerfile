FROM postgres

ENV POSTGRES_USER=Vlad
ENV POSTGRES_PASSWORD=root
ENV POSTGRES_DB=KitchenWonder

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

