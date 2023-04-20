FROM python:3.9.5-alpine3.12 as build
LABEL maintainer="The OpenTelemetry Authors"
WORKDIR /semconvgen
COPY . .
RUN apk --update add --virtual build-dependencies build-base
RUN pip install -U pip setuptools wheel
RUN pip wheel --no-deps . --wheel-dir .

FROM python:3.9.5-alpine3.12
WORKDIR /semconvgen
COPY --from=build /semconvgen/*.whl .
RUN pip install *.whl && rm -rf /semconvgen/*.whl
ENTRYPOINT ["gen-semconv"]
