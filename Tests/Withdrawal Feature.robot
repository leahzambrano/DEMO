*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/Withdrawal.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Online Banking to Pay
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Withdrawal icon
    Withdrawal.Choose to use a bank account
