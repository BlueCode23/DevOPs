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


### Software

1. OS Ubuntu (v 22 lts	or higher)
2. VirtualBox(v 7.0, or higher)
3. Vagrant (v 2.3.7, or higher)
4. Ansible (v 2.7.5, or higher)
5. Git (v 2.4, or higher)


## Guidelines impoprtant 2 options are avilbe to get the project running:

1 Option:

Form the zip code give in the project upload on moodle.

Upload the project in your IDE.
Do to your terminal and use command lines to setup the vagrant VM.
Go in the working directory GitlabSetup with open terminal: cd GitlabSetup (you can you tap on your keyboard to full the test of you command lines)
In the terminal: vagrant up
The VM should be up.
If not please contact us.

2 Option:

1- Get to the working directory
All is saved online in Github:
https://github.com/BlueCode23/DevOPs.git

Repository is public you should have access to it if not please contact any member of the group e-mail address:
First and Last Name	    and email address.
Ballinger Guillaume	    guillaume.ballinger.001@student.uni.lu
Bonte Eliott	        eliott.bonte.001@student.uni.lu
DA SILVA Filipe 	    filipe.dasilva.001@student.uni.lu


Note:
•	Code produced by one team can be integrated with code produced by other teams.
•	Code is the same during different stages of the project.

2-	Open your IDE

Open your IDE, and clone the code to your repository.
In it IDE go Get form VCS and get the project with URL: https://github.com/BlueCode23/DevOPs.git
Clone it in your IDE.

If this is not possible we assume you are able to clone it manually form github.
3-	How to run up the VM for the project

Go in to IDE you should open a terminal you should be in the working directory DevOPs and you should go to the working directory: GitlabSetup
•	Do do so type in your IDE terminal: cd GitlabSetup.

You should be in working directory GitlabSetup.


4-	Vagrant is used to create a VM which acts as integration server.

•	In your IDE terminal put: vagrant up

Everthing should be up and running


5-	If you machine get error:

•	Please add in your IDE terminal put: vagrant provision

6-	If the issue persists, please contact us via email, we are happy to help.



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