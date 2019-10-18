FROM python:3.8

RUN apt-get update && apt-get install git
RUN mkdir dsbuild
COPY .git ./dsbuild/.git
COPY .gitattributes ./dsbuild
COPY dotscience ./dsbuild/dotscience
COPY setup.py ./dsbuild
COPY README.md ./dsbuild
COPY LICENSE ./dsbuild
COPY setup.cfg ./dsbuild
COPY MANIFEST.in ./dsbuild
COPY requirements.txt ./dsbuild


RUN cd dsbuild ; pip3 install -r requirements.txt && pip3 install .
#RUN rm -rf dsbuild
