*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Successful Login
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    Login.Verify if successful

#Unsuccessful Login: Invalid credentials
    #[Tags]  smoke  negative
    #LandingPage.Load
    #Login.Invalid Credentials
    #Login.Verify if unsuccessful

#Unsuccessful Login: Username is blank
    #[Tags]  smoke  negative
    #LandingPage.Load
    #Login.Blank Username
   # Login.Verify if unsuccessful

#Unsuccessful Login: Password is blank
    #[Tags]  smoke  negative
    #LandingPage.Load
    #Login.Blank Password
   #Login.Verify if unsuccessful

#Unsuccessful Login: SQL Injection
    #[Tags]  smoke  negative
    #LandingPage.Load
    #Login.SQL Injection
    #Login.Verify if unsuccessful