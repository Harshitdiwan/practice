*** Settings ***
Library  SeleniumLibrary
Library  Screenshot
Library  OperatingSystem
Library    XML

*** Keywords **
login
    Create Webdriver     Chrome
    Maximize Browser Window
    Go To    https://www.amazon.in/
    Sleep    10s

Add Prime 
    Wait Until Element Is Visible    //*[@aria-label='Expand Prime']
    Click Element    //*[@aria-label='Expand Prime']
    Sleep    10s
    Click Element    //*[@id="multiasins-img-link"]
    
