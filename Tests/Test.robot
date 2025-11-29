*** Settings ***
Library    SeleniumLibrary    timeout=15    implicit_wait=0.2
Library    BuiltIn
Library    String
Resource   ..//Keywords/Keywords.robot
Resource   ..//Settings.robot 

*** Test Cases ***

Validate the Job on LinkedIn
    [Documentation]    This test verifies a specific job advertisement (“Senior Quality Engineer”) on the LINK Mobility company page on LinkedIn.
    Open Browser To LinkedIn Login Page
    Log In To LinkedIn With Username[Username] And Password[Password]    ##You could enter your own credentials here
    Search For [LINK Mobility] in the search field on LinkedIn and open it
    Navigate to the [Job] tab on the company LinkedIn page
    Search for the job [Senior Quality Engineer] on the company LinkedIn page and open it
    Validate that the job [Senior Quality Engineer] page contains the text [PowerShell]
    [Teardown]    Close All Browsers
