#!/usr/bin/python3
"""  fetches https://intranet.hbtn.io/status  """
import requests
from sys import argv
import json


if __name__ == "__main__":
    def retrive():
        with open("info.json", "r") as file:
            user = json.load(file)
        params = { "auth_token": user['auth_token'] }
        r = requests.get("https://intranet.hbtn.io/projects/434.json", params=params)
        project = r.json()
        return project
