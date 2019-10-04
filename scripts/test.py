#!/usr/bin/python3
"""  fetches https://intranet.hbtn.io/status  """
import requests
from sys import argv

if __name__ == "__main__":
    params =  {"api_key": "e3a127d130628e01332f2ee93b2bf4c3", "email": "732@holbertonschool.com", "password": "Stratovarius2019", "scope": "checker"}
    r = requests.post("https://intranet.hbtn.io/users/auth_token.json", params=params)
    result_num = r.json().get('count')
    print("Number of results: {}".format(result_num))
    result_list = r.json().get('results')
    for res in range(0, len(result_list)):
        print(result_list[res].get('name'))

