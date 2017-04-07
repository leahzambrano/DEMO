*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
#all variables are stored in Variables.robot file

*** Keywords ***
Load
    Go to  ${DEMO_URL}
    sleep  2s

Verify Page Loaded
    wait until page contains  About Twinbet

Select Yen icon
    click element  ${YEN_ICON}

Select Deposit icon
    click element  ${DEPOSIT_ICON}

Select Withdrawal icon
    click element  ${WITHDRAW_ICON}

Select Find icon
    click element  ${FIND_ICON}

Select Username
    click element  ${USERNAME_LINK}