FROM python:2

RUN pip install ansible boto boto3

CMD ["/bin/bash"]