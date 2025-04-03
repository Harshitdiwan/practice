*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary
Resource  ..//practice/first.resource

*** Test Cases ***
amazon
    login
    Add Prime
    