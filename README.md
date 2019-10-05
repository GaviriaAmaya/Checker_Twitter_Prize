# Checker Twitter Prize
___

<p align="center">
  <img width="460" height="300" src="https://camo.githubusercontent.com/04a8a9a456b8ecafad2eb4f2cff6803cd0194496/687474703a2f2f7777772e686f6c626572746f6e7363686f6f6c2e636f6d2f686f6c626572746f6e2d6c6f676f2e706e67">
</p>

## Project description :octocat:\
The checker twitter prize evaluates the progress of the user/student in the current project and offers a reward when he has completed at least 80%, the reward uses the twitter API to show the user a suggested tweet so pressing the button on the screen the student makes his daily tweet. 

## How it works:question:
* ### Authentication:
     The program uses a form to ask the user for api key, project id, email and password. With the information provided, it generates the post that returns the file info.json with the auth token.
* ### Task verification:
     Once the info.json file is obtained it authenticates to access the tasks of the project, once it has access to the tasks it runs the checkers so that it accumulates in a counter the number of tasks that have all the past checkers, to verify the status of the checkers all are run and a variable verifies the individual status of each one.
     Once the total of completed tasks and the total of tasks in the project have been calculated, it is calculated if the total of completed tasks is greater than 80%, if it is higher then return true otherwise return false
* ### Frontend deployment
     Depending on the return of the verification the front end displays the button with the option to tweet, in this case as the project was thought of as an integrated tool to the intranet, the frontend seeks to simulate a good part of the intranet. adding the option of twitter in the checkbox, with twit by default that takes the name of the project.
     
## Usage :mag_right: :
After cloning a local copy of the repository, enter your Holberton intranet username, password, email, project id and your api key into the info.json file, following the next steps
* Using token_generator.sh: Run `./setup.sh` to automatically setup the required information
* for consulting your api key go to the intranet and in the left side look for the tools the icon is something like this :wrench: and go down until you see Holberton's intranet API and copy it 
* for consulting the project id enter into the project and copy the nummber that appears into the url. Example: `https://intranet.hbtn.io/projects/309` take the **309**

## Authors
* Juan David Amaya [@GaviriaAmaya](https://github.com/GaviriaAmaya)
* Diego Castellanos [@Diegokernel](https://github.com/Diegokernel)
* Ricardo Gutierrez [@kyeeh](https://github.com/kyeeh)
* Mariana Plazas [@marianaplazas](https://github.com/marianaplazas)
* Heimer Rojas [@HeimerR](https://github.com/HeimerR)
* Juan Valencia [@Jdavp](https://github.com/Jdavp)
* Haroldo Velez [@haroldov](https://github.com/haroldov)
* Paula Zapata [@AndZapata](https://github.com/AndZapata)