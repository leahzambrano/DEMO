*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***
#all variables are stored in Variables.robot file

${TRANSFER_FROM_MAIN} =  css=#transfer_from > option:nth-child(2)
${TRANSFER_TO_OPUSCLUB} =  css=#transfer_to > option:nth-child(3)
${TRANSFER_AMOUNT_TB} =  id=amount
${TRANSFER_AMOUNT} =  100
${TRANSFER_BUTTON} =  id=transfer_button
${TRANSFER_ALERT} =  css=#message
${TRANSFER_CASHIER_URL} =  http://player.cn.twinbet.com/iframe_module/iframe_viewCashier
${TRANSFER_SS} =  transfer-screenshot-{index}.png
${TRANSFER_FROM_OPUSCLUB} =  css=#transfer_from > option:nth-child(3)
${TRANSFER_TO_MAIN} =  css=#transfer_to > option:nth-child(2)
${TRANSFER_TO_OPUSSPORTS} =  css=#transfer_to > option:nth-child(4)
${TRANSFER_FROM_OPUSSPORTS} =  css=#transfer_from > option:nth-child(4)
${TRANSFER_TO_OPUSKENO} =  css=#transfer_to > option:nth-child(5)
${TRANSFER_FROM_OPUSKENO} =  css=#transfer_from > option:nth-child(5)
${TRANSFER_FAILED_ALERT} =  没有足够有效余额
${TRANSFER_SUCCESS_ALERT} =  转账成功!


*** Keywords ***
Main wallet to Opus Club wallet
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_MAIN}
    click element  ${TRANSFER_TO_OPUSCLUB}
    input text  ${TRANSFER_AMOUNT_TB}  ${TRANSFER_AMOUNT}
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_SUCCESS_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}


Opus Club wallet to Main wallet
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_OPUSCLUB}
    click element  ${TRANSFER_TO_MAIN}
    input text  ${TRANSFER_AMOUNT_TB}  ${TRANSFER_AMOUNT}
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_SUCCESS_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}


Main wallet to Opus Sports wallet
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_MAIN}
    click element  ${TRANSFER_TO_OPUSSPORTS}
    input text  ${TRANSFER_AMOUNT_TB}  ${TRANSFER_AMOUNT}
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_SUCCESS_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}


Opus Sports wallet to Main wallet
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_OPUSSPORTS}
    click element  ${TRANSFER_TO_MAIN}
    input text  ${TRANSFER_AMOUNT_TB}  ${TRANSFER_AMOUNT}
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_SUCCESS_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}


Main wallet to Opus Keno wallet
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_MAIN}
    click element  ${TRANSFER_TO_OPUSKENO}
    input text  ${TRANSFER_AMOUNT_TB}  ${TRANSFER_AMOUNT}
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_SUCCESS_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}


Opus Keno wallet to Main wallet
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_OPUSKENO}
    click element  ${TRANSFER_TO_MAIN}
    input text  ${TRANSFER_AMOUNT_TB}  ${TRANSFER_AMOUNT}
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_SUCCESS_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}


Insufficient Balance
    location should be  ${PC_URL}
    click element  ${TRANSFER_FROM_MAIN}
    click element  ${TRANSFER_TO_OPUSCLUB}
    input text  ${TRANSFER_AMOUNT_TB}  10000
    click element  ${TRANSFER_BUTTON}
    sleep  2s
    element should be visible  ${TRANSFER_ALERT}
    element should contain  ${TRANSFER_ALERT}  ${TRANSFER_FAILED_ALERT}
    capture page screenshot  ${TRANSFER_SS}
    location should be  ${TRANSFER_CASHIER_URL}
