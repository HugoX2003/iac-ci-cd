def test_home():
    from app import app
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert b"Flask" in response.data  # Asegura que tu mensaje de bienvenida lo tenga
