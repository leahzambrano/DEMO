*** Settings ***
Library  Selenium2Library
Resource  Variables.robot


*** Variables ***
#all variables are stored in Variables.robot file

*** Keywords ***

Valid Credentials
    click element  ${LOGIN_LANG}
    sleep  1s
    input text  ${LOGIN_USER_TB}  ${LOGIN_USER}
    input password  ${LOGIN_PASSWORD_TB}  ${LOGIN_PASSWORD}
    click element  ${LOGIN_SUBMIT_BTN}

#Invalid Credentials
    #input text  ${LOGIN_USER_TB}  abcd111
    #input password  ${LOGIN_PASSWORD_TB}  1234AAA
    #click element  ${LOGIN_SUBMIT_BTN}

#Blank Username
    #input text  name=login  blank
    #input password  ${LOGIN_PASSWORD_TB}  ${LOGIN_PASSWORD}
    #click element  ${LOGIN_SUBMIT_BTN}

#Blank Password
    #input text  ${LOGIN_USER_TB}  ${LOGIN_USER}
    #input password  name=password  blank
    #click element  ${LOGIN_SUBMIT_BTN}

#SQL Injection
    #input text  ${LOGIN_USER_TB}  SELECT * FROM USER;
    #input password  ${LOGIN_PASSWORD_TB}  SELECT * FROM PASSWORD
    #click element  ${LOGIN_SUBMIT_BTN}


Verify if successful
    location should be  http://player.demo.tripleonetech.com/iframe_module/iframe_viewCashier

#Verify if unsuccessful
    #alert should be present
    #element should not be visible  ${PLAYERSETTINGS_ICON}

#Clear inputs
   # clear element text  ${LOGIN_USER_TB}
   # clear element text  ${LOGIN_PASSWORD_TB}
