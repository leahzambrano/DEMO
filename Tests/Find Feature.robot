*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/Find.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***


*** Test Cases ***
Find
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Find icon
    Find.Report
    sleep  2s