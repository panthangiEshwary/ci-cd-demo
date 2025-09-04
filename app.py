# app.py
from flask import Flask
import os

app = Flask(__name__)
port = int(os.environ.get("APP_PORT", 5000))

@app.route('/')
def hello():
    return f"Hello, CI/CD World! Running on port {port}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=port)

