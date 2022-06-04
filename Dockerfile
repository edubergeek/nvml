#FROM nvcr.io/nvidia/tensorflow:21.10-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.08-tf2-py3
FROM nvcr.io/nvidia/tensorflow:21.06-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.03-tf2-py3
#FROM nvcr.io/nvidia/tensorflow:21.04-tf1-py3
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6
RUN apt-get update && apt-get install -y x11-apps libxext-dev libgtk2.0-dev libgtk-3-dev libjpeg-dev libpng-dev libtiff-dev libxext-dev libxrender-dev python3-tk
WORKDIR /ml
RUN pip install --upgrade pip
RUN pip install jupyter
RUN pip install keras
RUn pip install git+https://www.github.com/keras-team/keras-contrib.git
RUN pip install matplotlib numpy scipy pillow scikit-image pdbpp pandas sklearn 
RUN pip install xgboost lightgbm fastparquet numerapi seaborn
COPY root.bashrc /tmp
RUN cat /tmp/root.bashrc >>/root/.bashrc && rm -f /tmp/root.bashrc
