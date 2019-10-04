#!usr/bin/python3

from requests import get
import json

if __name__ == "__main__":
	try:	
		url = "https://intranet.hbtn.io/dashboards/my_tools.json"
	        api = {"content-type": "application/json"}
                
		url_res = get(url, api)
		api_key = url_res.json()

		if ("error" in api_key):
			api_key = None
		return api_key
	except:
		raise("error to retrieve the api key")

