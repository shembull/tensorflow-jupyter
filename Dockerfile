FROM tensorflow/tensorflow:2.2.0-gpu-jupyter

# Add nodeJS
RUN set -x \
    && curl -sL https://deb.nodesource.com/setup_13.x | bash - \
    && apt-get install -y nodejs

# Install additional packages
RUN set -x \
  && /usr/bin/python3 -m pip install --upgrade pip \
  && pip install jupyterlab scikit-learn geopandas seaborn ipywidgets kneed pillow nodejs

RUN set -x \
  && jupyter labextension install jupyterlab-theme-solarized-dark \
  && mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension

ADD res/themes.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension

 CMD ["bash", "-c", "jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]