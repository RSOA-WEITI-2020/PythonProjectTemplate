FROM python:3

ENV WORKSPACE="/rosa/app/source/"

ADD *.py ${WORKSPACE}

WORKDIR ${WORKSPACE}

CMD ["python", "example.py"]