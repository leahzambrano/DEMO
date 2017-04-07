*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/Transfer.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
Transfer Main Wallet to Opus Club wallet
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Main wallet to Opus Club wallet


Transfer Opus Club wallet to Main wallet
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Opus Club wallet to Main wallet

Transfer Main Wallet to Opus Sports wallet
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Main Wallet to Opus Sports wallet

Transfer Opus Sports wallet to Main wallet
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Opus Sports wallet to Main wallet

Transfer Main Wallet to Opus Keno wallet
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Main Wallet to Opus Keno wallet

Transfer Opus Keno wallet to Main wallet
    [Tags]  smoke  positive
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Opus Keno wallet to Main wallet

Transfer with Insufficient Balance
    [Tags]  smoke  positive  current
    LandingPage.Load
    Login.Valid Credentials
    sleep  3s
    LandingPage.Select Username
    Transfer.Insufficient Balance