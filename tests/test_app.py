import requests
from simple_flask_app.app import app
def test_index():
    app.testing = True
    client = app.test_client()

    response = client.get('/')
    assert response.status_code == 200
    assert response.data == b'Hello, World!'
    assert response.headers['Content-Type'] == 'text/html; charset=utf-8'
