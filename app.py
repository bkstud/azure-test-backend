from flask import Flask
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)

@app.route("/")
def hello():
    return f"Hello World! Env: {os.environ}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)