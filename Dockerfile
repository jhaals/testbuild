FROM alpine as app
RUN mkdir /data
COPY . /data

FROM trinitronx/python-simplehttpserver
COPY --from=app /data /var/www