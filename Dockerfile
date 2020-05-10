FROM tensorflow/tensorflow:2.2.0-gpu-jupyter

# Install additional packages
RUN set -x \
  && /usr/bin/python3 -m pip install --upgrade pip \
  && pip install jupyterlab scikit-learn geopandas seaborn ipywidgets kneed pillow

# Add nodeJS
RUN set -x \
    && curl -sL https://deb.nodesource.com/setup_13.x | bash - \
    && apt-get install -y nodejs

 CMD ["bash", "-c", "jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]