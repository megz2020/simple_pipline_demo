FROM python:3.11.0a5-alpine3.14

WORKDIR /app
COPY ./simple_flask_app/ /app/
COPY ./requirements.txt /app/
COPY ./tests/ /app/tests/
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080
CMD ["python", "app.py"]
