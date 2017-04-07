*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/PlayerCenter.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Access Player Center Page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.Page is accessible

View Personal Information page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.View Personal Information page

View Deposit Page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.View Deposit Page

View Withdrawal Page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.View Withdrawal Page

View Search Page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.View Find Page

View Messages Page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.View Messages Page

View Promotions Page
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Yen icon
    PlayerCenter.View Promotions Page