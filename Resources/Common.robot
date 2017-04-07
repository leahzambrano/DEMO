*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
#all variables are stored in Variables.robot file

*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End Web Test
    close browser