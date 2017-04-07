*** Settings ***
Library  Selenium2Library
Resource  Variables.robot

*** Variables ***


*** Keywords ***
Page is accessible
    #title should be  玩家中心
    wait until page contains element  ${PC_VERIFY}
    location should be  ${PC_URL}

View Personal Information page
    click element  ${PC_INFO}
    sleep  2s
    location should be  ${INFO_URL}
    textfield value should be  id=username  ${PC_USERNAME}
    textfield value should be  css=#referal_code  ${PC_REFCODE}

View Deposit page
    click element  ${DEPOSIT_URL}
    sleep  2s
    wait until page contains element  css=body > div.panel.panel-primary > div.panel-body > div > div.deposit-list > div > div > a.deposit.list-group-item.active
    location should be  ${DEPOSIT_URL}

View Withdrawal page
    click element  ${PC_WITHDRAW}
    sleep  2s
    wait until page contains element  css=#new_acct_form > div:nth-child(5) > div > input
    location should be  ${WITHDRAW_URL}

View PlayerCenter page
    click element  css=#dashboard > a
    sleep  2s
    wait until page contains element  css=body > div.panel.panel-primary > nav > div > div.navbar-header > a
    location should be  http://player.cn.twinbet.com/iframe_module/iframe_viewCashier

View Search page
    click element  css=#search_nav > a
    sleep  2s
    wait until page contains element  css=body > div.panel.panel-primary > nav > div > div.navbar-header > a
    location should be  http://player.cn.twinbet.com/iframe_module/iframe_viewReport

View Messages page
    click element  css=#bs-example-navbar-collapse-1 > ul:nth-child(1) > li:nth-child(6) > a
    sleep  2s
    wait until page contains element  css=body > div.panel.panel-primary > nav > div > div.navbar-header > a
    location should be  http://player.cn.twinbet.com/iframe_module/iframe_messages

View Promotions page
    click element  css=body > div.panel.panel-primary > div.panel-body > div > a
    sleep  2s
    wait until page contains element  css=#body > div.panel.panel-primary > nav > div > div.navbar-header > a
    location should be  http://player.cn.twinbet.com/iframe_module/iframe_promos