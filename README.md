# tensorflow-jupyter

This repo uses the [tensorflow/tensorflow:2.2.0-gpu-jupyter](https://hub.docker.com/r/tensorflow/tensorflow/) as a base and adds some extra packages. Additionally, this docker repo defaults to Jupyter Lab on startup.

Use ```docker run -p 8888:8888 shembull/tensorflow-jupyter:[tag]``` to start a container and paste the link from the command line into your browser.

If your device has a nvidia graphics card, follow [this guide](https://www.tensorflow.org/install/docker) to set everything up.
Then use the command ```docker run --gpus all -p 8888:8888 shembull/tensorflow-jupyter:[tag]``` instead.
To store any data outside the container mount a volume to the container directory ```/tf```.