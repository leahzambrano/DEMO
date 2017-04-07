*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
#all variables are stored in Variables.robot file

*** Keywords ***
Report
    location should be  ${REPORT_URL}
    element should be visible  ${REPORT_HEADING_LBL}
