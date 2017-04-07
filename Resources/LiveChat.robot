*** Settings ***
Library  Selenium2Library
Resource  Variables.robot


*** Variables ***
#all variables are stored in Variables.robot file

*** Keywords ***
Click Chat button
    click element  ${CHAT_BTN}
    capture page screenshot
    #select window  name=http://www.cn.twinbet.com/pub/live_chat_link/chn
    location should be  ${CN_CHAT_URL}

