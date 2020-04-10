FROM python:3

ENV WORKSPACE="/rosa/app/source/"

ADD *.py ${WORKSPACE}
ADD pyproject.toml ${WORKSPACE}

RUN cd ${WORKSPACE} && poetry install

WORKDIR ${WORKSPACE}

CMD ["python", "example.py"]