*** Settings ***
#Library  TestKeyLib
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/LiveChat.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Live Chat
    [Tags]  smoke  positive
    LandingPage.Load
    #Login.Valid Credentials
    LiveChat.Click Chat button
    sleep  2s
