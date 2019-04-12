FROM java:8

ENV EMBULK_VERSION 0.9.9

RUN curl --create-dirs -o ~/.embulk/bin/embulk -L "https://dl.bintray.com/embulk/maven/embulk-0.9.9.jar"
RUN chmod +x ~/.embulk/bin/embulk
RUN echo 'export PATH="$HOME/.embulk/bin:$PATH"' >> ~/.bashrc

WORKDIR /work

