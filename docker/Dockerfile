FROM debian
WORKDIR /home/ekoehler/Docs/c/rtype/
ENV DISPLAY=unix:0
RUN apt update -y && apt install -y sudo gcc g++ vim make cmake git python3-pip libudev-dev pkg-config libgl1-mesa-dev
RUN pip3 install conan
COPY . .