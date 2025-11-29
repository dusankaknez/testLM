# LINK Mobility – LinkedIn Job Validation Test

This project contains a keyword-driven automation test built with Robot Framework and SeleniumLibrary.
It verifies the presence and content of the "Senior Quality Engineer" job posting on the LINK Mobility company page on LinkedIn.

## Test Overview

Test case: Validate the Job on LinkedInGoal:
Automate the process of:
1. Logging into LinkedIn
2. Searching for the LINK Mobility company page
3. Navigating to the “Jobs” tab
4. Opening the “Senior Quality Engineer” job posting
5. Validating that the job description contains the keyword “PowerShell”

## Technology Stack
-  Robot Framework
-  SeleniumLibrary
-  Google Chrome & ChromeDriver

## Credentials

To execute the test, you must provide **your own LinkedIn username and password**.  
For security reasons, they are not hardcoded the project.
You can define them in a a variable file:
Create Variables/Variables.robot:
```
*** Variables ***
${USERNAME}    your_email@example.com
${PASSWORD}    your_password
```

Add Variables/Variables.robot to the test file as a new Resource.
```
Resource   ..//Variables/Variables.robot
```


