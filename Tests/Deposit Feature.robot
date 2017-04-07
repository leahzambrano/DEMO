*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LandingPage.robot
Resource  ../Resources/Login.robot
Resource  ../Resources/Deposit.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
#Online Banking to Pay: using the payment information
    #[Tags]  smoke  positive  deposit
    #LandingPage.Load
    #Login.Valid Credentials
    #LandingPage.Select Deposit icon
    #Deposit.Online Banking to pay: using the payment information


3rd Party Payment
    [Tags]  smoke  positive  current
    LandingPage.Load
    Login.Valid Credentials
    LandingPage.Select Deposit icon
    Deposit.Bank Deposit