FROM nvcr.io/nvidia/tensorflow:23.08-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:22.10-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:22.09-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:22.02-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.11-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.06-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.08-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.03-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.04-tf1-py3
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6
RUN apt-get update && apt-get install -y x11-apps libxext-dev libgtk2.0-dev libgtk-3-dev libjpeg-dev libpng-dev libtiff-dev libxext-dev libxrender-dev python3-tk
WORKDIR /ml
RUN pip install --upgrade pip
RUN pip install opencv-python scikit-learn scikit-image matplotlib
RUN pip install xgboost lightgbm fastparquet numerapi
COPY root.bashrc /tmp
RUN cat /tmp/root.bashrc >>/root/.bashrc && rm -f /tmp/root.bashrc
