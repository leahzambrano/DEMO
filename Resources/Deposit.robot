*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
#all variables are stored in Variables.robot file

${DEPOSIT_THIRDPARTY_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div > div.deposit-list > div > div > a:nth-child(2)
${DEPOSIT_AUTO_URL} =  http://player.cn.twinbet.com/player_center/auto_payment/2/26
${DEPOSIT_AMOUNT2_TB} =  id=deposit_amount
${DEPOSITORDERNUMBER_LBL} =  css=#form1 > div:nth-child(2) > table > tbody > tr:nth-child(2) > td:nth-child(1)
${DEPOSIT_CONFIRM_BTN} =  css=#Btn_Return
${DEPOSIT_THIRDPARTY_SUCCESS} =  css=body > div.panel.panel-primary > div.panel-body > header > h1
${DEPOSIT_RETURN_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div > a
${DEPOSIT_TEMP_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div > div.deposit-list > div > div > a:nth-child(1)

${DEPOSIT_AMOUNT} =  2
${DEPOSIT_MANUAL_URL} =  http://player.demo.tripleonetech.com/iframe_module/manual_payment/1
${DEPOSIT_BANK_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div > div.deposit-list > div > div > a.deposit.list-group-item.active
${DEPOSIT_PAYMENTINFO_CB} =  id=my_account_checkbox
${DEPOSIT_AMOUNT_TB} =  id=depositAmount
${DEPOSIT_PROMOLIST_CB} =  css=#form-deposit > div.panel.panel-default > div > div:nth-child(7) > div > select > option:nth-child(3)
${DEPOSIT_SUBMIT_BTN} =  id=modalTrigButton
${DEPOSIT_VERIFY} =  css=#depositWithdrawalModal
${DEPOSIT_VERIFY_BTN} =  id=btn-submit
${DEPOSIT_SUCCESS_ALERT} =  css=body > div.alert.alert-success.alert-dismissible.in
${DEPOSIT_ORDERID} =  css=body > div.panel.panel-primary > div.panel-body > div > div.panel-body > div.row.hidden-print > div.col-md-5 > div > table > tbody > tr:nth-child(2) > td
${DEPOSIT_PAYMENTAMOUNT} =  css=#payment_amount

*** Keywords ***
Bank Deposit
#using the payment information @positive
    location should be  ${DEPOSIT_MANUAL_URL}
    click element  ${DEPOSIT_BANK_BTN}
    input text  ${DEPOSIT_AMOUNT_TB}  ${DEPOSIT_AMOUNT}
    click element  ${DEPOSIT_SUBMIT_BTN}
    sleep  2s
    #wait until page contains element  ${DEPOSIT_VERIFY}
    #element should contain  id=verifyDepositAmount  ${AMOUNT}
   # click button  ${DEPOSIT_VERIFY_BTN}
    #element should be visible  ${DEPOSIT_SUCCESS_ALERT}
   # element should be visible  ${DEPOSIT_ORDERID}
    #element should be visible  ${DEPOSIT_PAYMENTAMOUNT}



Third-party payment
    click element  ${DEPOSIT_TEMP_BTN}
    location should be  ${DEPOSIT_AUTO_URL}
    input text  ${DEPOSIT_AMOUNT2_TB}  ${DEPOSIT_AMOUNT}
    sleep  2s
    click element  ${DEPOSIT_SUBMIT_BTN}
    sleep  2s
    wait until page contains element  ${DEPOSIT_VERIFY}
    click button  ${DEPOSIT_VERIFY_BTN}
    #element should be visible  ${DEPOSIT_ORDERNUMBER_LBL}
    #sleep  3s
    #click element  ${DEPOSIT_CONFIRM_BTN}
    #sleep  3s
    #element should be visible  ${DEPOSIT_THIRDPARTY_SUCCESS}
    #click element  ${DEPOSIT_RETURN_BTN}
    #location should be  http://player.cn.twinbet.com/player_center/dashboard


ATM/Counter