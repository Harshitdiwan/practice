*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary
Resource  ..//Resources/first.resource

*** Test Cases ***
amazon
    login
    Search
    Filter
    Add product
    Add new product
    Select product
    Go to Cart
    Purchase