FROM andrewosh/binder-base

MAINTAINER Ariel Rokem <arokem@gmail.com>
USER root
RUN apt-get update && apt-get install -y xvfb
RUN pip install dipy xvfbwrapper
RUN conda install vtk
ADD https://raw.githubusercontent.com/arokem/xvfbmagic/master/xvfbmagic.py /home/main/notebooks
