FROM tensorflow/tensorflow:2.2.0rc3-gpu-jupyter

RUN set -e \
  && /usr/bin/python3 -m pip install --upgrade pip \
  && pip install scikit-learn geopandas seaborn ipywidgets kneed pillow

 CMD ["bash", "-c", "jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]