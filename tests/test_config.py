import os
from app.config import load_api_key

def test_load_api_key(monkeypatch):
    monkeypatch.setenv("API_KEY", "dummy-value")
    assert load_api_key() == "dummy-value"
