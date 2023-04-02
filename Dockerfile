FROM python:3

WORKDIR /idarling

RUN apt install -y git && \
    pip install PyQt5 && \
    git clone https://github.com/fidgetingbits/IDArling .

EXPOSE 31013

ENTRYPOINT [ "python", "idarling_server.py", "-h=0.0.0.0", "-p=31013", "--no-ssl" ]
