FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN set -e \
  && /usr/bin/python3 -m pip install --upgrade pip \
  && pip install scikit-learn geopandas seaborn ipywidgets kneed pillow

 CMD ["bash", "-c", "jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]