#!/usr/bin/python3
"""  fetches https://intranet.hbtn.io/status  """
import requests
from sys import argv
import json


def retrive(project_id):
    with open("info.json", "r") as file:
        user = json.load(file)
    params = { "auth_token": user['auth_token'] }
    r = requests.get("https://intranet.hbtn.io/projects/{}.json".format(project_id), params=params)
    project = r.json()
    flag_task = 0
    for task in project['tasks']:
        if task['checker_available'] is True:
            id_task = task['id']
            t = requests.post("https://intranet.hbtn.io/tasks/{}/start_correction.json".format(id_task), params=params)
            print(t.json())
            id_correction = t.json()['id']
            c = requests.get("https://intranet.hbtn.io/correction_requests/{}.json".format(id_correction), params=params)
            print(c.json())
            checks = c.json()['result_display']['checks']
            flag_check = 0
            for check in checks:
                    if check['passed'] == False:
                        flag_check = 1
                        break
            if flag_check == 0:
                flag_task += 1
    if flag_task / len(project['tasks']) > 0.8:
        return True
    else:
        return False
