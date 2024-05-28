FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y libcgal-dev
RUN apt-get install -y libopencv-dev
RUN apt-get install -y libgl1-mesa-dev libglfw3-dev libglu1-mesa-dev

WORKDIR /city3d

COPY . .

RUN mkdir Release

WORKDIR /city3d/Release

RUN cmake -DCMAKE_BUILD_TYPE=Release ..

RUN make

