# Contributring to Singleton-demo

## Welcome

Welcome ......


## Getting Started

### Fork Repository
Fork the singleton-demo/ci repository and clone the code to your local workspace.

### Repository Structure

### Branch

### Develop


### Test CI Pipeline
Singleton use Travis-ci as CI framework and help contributor to 
test their code change as early as possible. Some configuration need to 
be done to setup CI pipeline in your fork repository.

##### SonarCloud Configuration
1. Generate sonar token

    a. After you fork the repositpry, login to 'sonarcloud.io' with your github account;
    
    b. My Account -> Security, generate a token and copy it, it will be used later.
    
2. Create project

    a. My Organizations -> select your own Organization -> Administration -> Project Management -> Create Project,
       input a customized project name and key(key must be unique in SonaCloud) then create it.
       
    b. Mark down the key of this Organization in right-up corner(not Organization name), it will be used in Travis CI configuration later.
    
3. Create Quality Gate

    a. In Quality Gates tab, click 'create' button and input a name to create guality gate for above project, click 'Add Condition' to add rules as following:
       
       Blocker Issues  > 0
       
       Coverage < 60% (when you input coverage value, just input number without %)
       
       Vulnerabilities > 0
       
    b. Input project name you created above in search box, check the checkbox of your project in the search result list.

##### Travis CI Configuration

1. After you configured SonarCloud, login to Travis-ci 'https://travis-ci.org' with your github account

2. Find your fork repository in your account settings, enabled it then click 'settings', add following environment variables
    
    SONAR_ORG=\<Organization key in SonarCloud configuration step2.b\>
    
    SONAR_TOKEN=\<token generated in SonarCloud\>
    
    SONAR_PROJECT_NAME=\<project name you created in SonarCloud\>
    
    SONAR_PROJECT_KEY=\<project key you created in SonarCloud\>
    
##### CI Pipeline Result

After you finished above configurations, you can commit code and push to your fork repository. It will trigger CI on Travis, you can login Travis CI to see result.
You can login SonarCloud.io to see code scan details under your project.

##### Dependabot Preview(A Github APP owned by Github which provide dependencies scan) Configuration

1. Login to Github, click 'Marketplace' in navigation on top.

2. Search for 'Dependabot Preview' and click the search result.

3. Click 'Set up a plan', then the screen scroll down to the end of the page, find 'Install it for free' and click it, then click 'Complete order and begin installation', then click 'Install' to install the Github APP.

4. Click 'Sign in with Github', then click 'Authorize Dependabot Preview by GitHub' to sign in Dependabot Preview. After that, you will able to see the Dependabot Preview panel.

5. Click 'Select repos to add' and fill in the repo, dependencies description file(e.g. pom.xml for Maven, build.gradle for Gradle, package.json for NPM) info in the popup modal, then click 'Add language' to finish the set up.

6. After the set up, the Dependabot Preview will scan the open dependencies in your project automatically, if any vulnerability found, pull requests with detailed info and auto fix will be created for the repo, please keep eye on it.

### Pull Request
