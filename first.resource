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

Search
    Wait Until Element Is Visible    //*[@aria-label='Search Amazon.in']    10s
    Input Text    //*[@aria-label='Search Amazon.in']    mobile phone under 20000
    Click Element    //*[@id='nav-search-submit-button']    
    Sleep    10s
    
Filter
    Click Link    //*[@aria-label='Apply the filter 8 GB to narrow results']
    Sleep    10s

Add product
    Wait Until Element Is Visible    //*[@id="a-autoid-1-announce"]
    Click Element    //*[@id="a-autoid-1-announce"]
    Sleep    10s


Go to Cart
    Wait Until Element Is Visible    //*[@id="nav-cart-count"]
    Click Element    //*[@id="nav-cart-count"]
    Sleep    10s

Purchase
    Wait Until Element Is Visible    //*[@name="proceedToRetailCheckout"]
    Click Element    //*[@name="proceedToRetailCheckout"]
    Sleep    10s
    
