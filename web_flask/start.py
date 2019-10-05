#!/usr/bin/python3
"""starts a Flask web application """
from flask import Flask, request
from flask import render_template
from fetch_data import retrive

app = Flask(__name__)


@app.route('/', strict_slashes=False)
def index():
        data = request.json()
        print(data)
        values = retrive(290)

if __name__ == "__main__":
    app.run(host='0.0.0.0')
