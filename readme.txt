# CI/CD Cours Software Engineering Environments Uni Luxembourg.

Filipe DA SILVA						ID 0181074922
Eliott Bonte						ID 0170177457
Guillaume Ballinger					ID 1190225555



## Asset composition

- a vagrant VM specification (i.e. Vagrant file)
- Ansible playbooks to provision the VM
- GitLab as VCS and CI running into the VM
- Docker service running into the VM
- Docker account and access
- A Github account and access
- Git is up and to latest version
- integrated development environment (IDE), we are using PyCharm, or intellij. Other IDE could be used for example Visual Studio, depending on your experience.


## Prerequisites

### Hardware

1. Laptop or home PC with at least 16 Gb memory or (ideally 32 Gb)
2. An active internet connection !!!

### Software

1. OS Ubuntu (v 22.04 lts)
2. VirtualBox(v 7.0)
3. Vagrant (v 2.3.7)
4. Ansible (v 2.7.5)



## Guidelines important 2 options are availabe to get the project running:

1 Option:

Form the zip code give in the project upload on moodle.
Open your terminal


2 Option:

clone the repository with:
git clone https://github.com/BlueCode23/DevOPs.git


Repository is public you should have access to it if not please contact any member of the group e-mail address:
First and Last Name	    and email address.
Ballinger Guillaume	    guillaume.ballinger.001@student.uni.lu
Bonte Eliott	        eliott.bonte.001@student.uni.lu
DA SILVA Filipe 	    filipe.dasilva.001@student.uni.lu

## Run the project

`cd DevOPs`
### Run the CI + production server
(inside of the DevOPs folder)
````sh
cd GitlabSetup
vagrant up
````

### Run the development server
(inside of the DevOPs folder)
````sh
vagrant up
````

### Troubleshooting:
#### The production server doesn't work
(inside of the GitlabSetup folder)
````
vagrant destroy production
vagrant up production
````

#### The gitlab CI doesn't work
(inside of the GitlabSetup folder)
````
vagrant destroy gitlab
vagrant up gitlab
````

#### The dev environement isn't working
(inside of the DevOPs folder)
````
vagrant destroy
vagrant up
````
Note enter yes for the backend and the frontend.
Do not reprovision a machine that is up. Destroy it and recreate it from the start.


If any issue persists, please contact us via email, we are happy to help.



### **** Test Case to go to gitlab ****

Initial conditions: your VM network is correclty setup to access the link (recommand network adapter is attached to Nat)

Login Steps:
1. Go to http://192.168.60.2/gitlab in your favorit web browser
2. Please input user name: root
3. Please input password:aaaaaaaa
4. Sign in

Check the deployment Pipeline in a given state
1. Go to http://192.168.60.2/gitlab/root/project
2. There are the repo of the project in gitlab
3. Go to http://192.168.60.2/gitlab/root/project/-/pipelines
4. The pipeline should have been passed for all process expect release as the manual approve is needed


Scenarios
1. It will be a test Scenario auto bild in the pipline to process the test.


# How to access E4L

Once vagrant up has been called and finished it's process you can access E4L.
In production:
http://localhost:8081
In devloppement:
http://localhost:8080

Note if these two ports are already allocated you will have to increment the port. This works up to port 8085
but only one is allocated.


# Summary of the actions that have been done:

## Reproduce Dev, Stage, and Prod environments
This can be done with the 2 commands above
## Product setup on Development environment
Automatised with vagrant up
## CI/CD server including pipeline for product
This is in the gitlabSetup also done automatically through vagrant up
## Product  setup on Staging/Production environment
This step is done inside of the CI server where after all the test passes the CI deploys to the production VM
## Test cases in Staging Environment (2 points)
3 test cases have been done:
* Unit tests (added junit test named UnitTest next to the other test)
* Acceptance test using artillery (can be found inside test as a shell script)
* Integration test ( can be found inside test as a shell script)
## Scenarios in Production Environment
Check the scenario.txt file for this
## Dev environment setup
vagrant up on the DevOPs folder
## Product setup on Dev environment
vagrant up on the DevOPs folder
## Staging/Production servers
vagrant up on the Gitlab folder
## CI/CD server including pipeline for product (5 points)
vagrant up on the Gitlab folder. Verify it on http://192.168.60.2/gitlab/root/project then go on jobs
and this should be visible
## Test cases in Staging environment (4 points)
* Unit tests (added junit test named UnitTest next to the other test)
* Acceptance test (can be found inside test as a shell script)
* Integration test ( can be found inside test as a shell script)
Automatised during the pipeline as 3 proper jobs
