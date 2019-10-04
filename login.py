#!/usr/bi

import mechanicalsoup

if __name__ == "__main__":

    URL = "https://intranet.hbtn.io/auth/sign_in"
    PASSWORD = "Password"
    EMAIL = "Email"

    # Create a browser object
    browser = mechanicalsoup.Browser()

    # Request holberton login page
    login_page = browser.get(URL)

    # we grab login the login form
    login_form = login_page.soup.find("form",{"class":"form-control"})

    # find login and password inputs
    login_form.find("input", {"name": "user[login]"}) = EMAIL
    login_form.find("input", {"name": "user[password]"}) = PASSWORD

    # submit form
    response = browser.submit(login.form, loginpage.url)
