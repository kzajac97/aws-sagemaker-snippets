# no need for docker build, just TAG and push to ECR existing container
# this example uses default CPU torch container
FROM pytorch/pytorch:latest

# install python packages
RUN pip install --upgrade pip
RUN pip install --no-cache-dir click==8.1.6

# the code does not need to be added to the container, it can be pulled dynamically using SageMaker Processing SDK
ADD processing.py /processing.py

ENTRYPOINT ["python3", "/main.py"]
