*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/Redirection.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Redirect to Home page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    Redirection.Home

Redirect to Slot Machine page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    Redirection.Slot

Redirect to Playground page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    Redirection.Playground

Redirect to Physical Education page
    [Tags]  smoke  positive  1
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    Redirection.Physical Education

Redirect to Lottery page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    Redirection.Lottery

Redirect to Promotions page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    Redirection.Promotions