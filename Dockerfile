FROM alpine

RUN apk add --no-cache gcc python3 python3-dev musl musl-dev && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install mkdocs && \
    pip3 install mkdocs-material && \
    pip3 install mkdocs-minify-plugin && \
    rm -r /root/.cache
