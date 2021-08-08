FROM python:3.7
ENV PYTHONUNBUFFERED=1

WORKDIR /3mf/backend

COPY ./backend/requirements.txt /3mf/backend
RUN pip install -r requirements.txt

COPY ./backend /3mf/backend

RUN chmod 744 ./probe-psql-container.sh

CMD ./probe-psql-container.sh gunicorn backend.wsgi --bind 0.0.0.0:8000

