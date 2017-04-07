*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
#all variables are stored in Variables.robot file

*** Keywords ***
Home
    click element  ${REDIRECT_BTN}
    click element  ${REDIRECT_HOME_BTN}
    location should be  ${CN_INDEX_URL}

Slot
    click element  ${REDIRECT_BTN}
    click element  ${REDIRECT_SLOT_BTN}
    location should be  ${SLOTS_URL}

Playground
    click element  ${REDIRECT_BTN}
    click element  ${REDIRECT_PLAYGROUND_BTN}
    location should be  ${OPUSCASINO_URL}

Physical Education
    click element  ${REDIRECT_BTN}
    click element  ${REDIRECT_PHYSICAL_BTN}
    location should be  ${SPORTSBOOK_URL}

Lottery
    click element  ${REDIRECT_BTN}
    click element  ${REDIRECT_LOTTERY_BTN}
    location should be  ${OPUSKENO_URL}

Promotions
    click element  ${REDIRECT_BTN}
    click element  ${REDIRECT_PROMOTIONS_BTN}
    location should be  ${PROMOTIONS_URL}
