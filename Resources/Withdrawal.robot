*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
${WITHDRAWAMOUNT} =  100
${WITHDRAW_CN_URL} =  http://player.cn.twinbet.com/player_center/withdraw

*** Keywords ***
Choose to use a bank account
    location should be  ${WITHDRAW_CN_URL}
    sleep  2s
    input text  id=amount  ${WITHDRAWAMOUNT}
    click element  css=#tab-preferred-account > div
    #select bank from dropdown
    click element  css=#preferred_account > option:nth-child(2)
    click button  id=withdraw_button
    sleep  2s
    element should be visible  id=depositWithdrawalModal
    click element  css=#btn-submit
    sleep  1s
    element should be visible  css=body > div.alert.alert-success.alert-dismissible.in

