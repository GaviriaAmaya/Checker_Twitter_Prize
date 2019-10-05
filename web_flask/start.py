#!/usr/bin/python3
"""starts a Flask web application """
from flask import Flask, request
from flask import render_template
from fetch_data import retrive

app = Flask(__name__)


@app.route('/', strict_slashes=False, methods=["POST"])
def index():
        data = request.get_json(force=True)
        values = retrive(data.project)
        return values

if __name__ == "__main__":
    app.run(host='0.0.0.0')
