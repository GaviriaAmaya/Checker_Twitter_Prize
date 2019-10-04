#!/usr/bin/python3
"""starts a Flask web application """
from flask import Flask
from flask import render_template
import fetch_data

app = Flask(__name__)


@app.route('/', strict_slashes=False)
def index():
        values = fetch.retrive()
        return render_template('test_main.html', values=values)

if __name__ == "__main__":
    app.run(host='0.0.0.0')

