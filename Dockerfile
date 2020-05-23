# Specifies base image and tag

FROM gcr.io/deeplearning-platform-release/tf-cpu.1-13
WORKDIR /root

# Installs cloudml-hypertune for hyperparameter tuning.
RUN pip install cloudml-hypertune

# Downloads training data
#RUN curl https://example-url/path-to-data/data-filename --output /root/data-filename

# Copies the trainer code to the docker image.
COPY chicago-taxi/trainer/__init__.py /root/__init__.py
COPY chicago-taxi/trainer/inputs.py /root/inputs.py
COPY chicago-taxi/trainer/model.py /root/model.py
COPY chicago-taxi/trainer/task.py /root/task.py

# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "task.py"]
