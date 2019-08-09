FROM debian:jessie-slim

RUN apt-get update && apt-get install -y curl git gcc build-essential 
RUN apt-get install -y libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev
RUN apt-get install -y libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev uuid-dev
RUN curl https://pyenv.run | bash
ENV PATH="/root/.pyenv/bin:/root/.pyenv/shims:$PATH"
RUN pyenv update && pyenv install 3.6.8 && pyenv rehash && pyenv global 3.6.8
RUN pip install lightgbm
RUN mkdir /app
COPY sample.py /app/



