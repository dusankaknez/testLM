*** Settings ***
Library    SeleniumLibrary    timeout=15    implicit_wait=0.2
Library    BuiltIn
Library    String

*** Keywords ***
Open Browser To LinkedIn Login Page
    [Documentation]    This Keyword is for opening Chrome browser and navigating to LinkedIn, and Maximizing the window.
    Open Browser    https://www.linkedin.com/uas/login      chrome
    Maximize Browser Window

Log In To LinkedIn With Username[${USERNAME}] And Password[${PASSWORD}]
    [Documentation]    This Keyword is for LinkedIn login with ${USERNAME} and ${PASSWORD}
     Input Text    //*[@id='username']    ${USERNAME}
     Input Text    //*[@id='password']    ${PASSWORD}
     Click Button  //button[@aria-label='Sign in']

Search For [${COMPANYNAME}] in the search field on LinkedIn and open it
    [Documentation]  This keyword is for searching any ${COMPANYNAME} from the main page on LinkedIn.
    Wait Until Page Contains Element    //input[@aria-label='Search']
    Click Element    //input[@aria-label='Search']
    Input Text    //input[@aria-label='Search']    ${COMPANYNAME}
    Press Keys    //input[@aria-label='Search']    ENTER
    Wait Until Page Contains Element    //ul[@role='presentation']//div[@class='display-flex' and contains(.,'${COMPANYNAME}')]
    Click Element    //ul[@role='presentation']//div[@class='display-flex' and contains(.,'${COMPANYNAME}')]

Navigate to the [${TABNAME}] tab on the company LinkedIn page
    [Documentation]  This keyword is for navigating through different tabs on a Company LinkedIn page. 
    Wait Until Page Contains Element    //nav[@aria-label='Organization’s page navigation']
    Click Element                        //nav[@aria-label='Organization’s page navigation']//a[contains(.,'${TABNAME}')]

Search for the job [${JOBTITLE}] on the company LinkedIn page and open it
    [Documentation]  This keyword is for searching any ${JOBTITLE} on a company page under the Jobs tab.
    Wait Until Page Contains Element    //input[@aria-label='Search' and @placeholder='Job title or keyword']
    Click Element    //input[@aria-label='Search' and @placeholder='Job title or keyword']
    Input Text    //input[@aria-label='Search' and @placeholder='Job title or keyword']    ${JOBTITLE}
    Click Element    //input[@aria-label='Search' and @placeholder='Job title or keyword']
    Wait Until Page Contains Element    //div[@role='listbox']
    Scroll Element Into View    //div[@role='listbox']
    Click Element    //a[text()='Search']

Validate that the job [${JOBTITLE}] page contains the text [${TEXT}]
    [Documentation]  This keyword validates first that the ${JOBTITLE} is visible and then that the page contains the ${TEXT}
    Wait Until Page Contains Element    //h1[normalize-space()= '${JOBTITLE}']
    Page Should Contain    ${TEXT}