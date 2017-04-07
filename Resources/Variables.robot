*** Settings ***
Library  Selenium2Library


*** Variables ***
#This storage of all the global variables set in the "resources" directory...

#Common.robot
${BROWSER} =  chrome

#LandingPage.robot
${DEMO_URL} =  http://player.demo.tripleonetech.com/iframe/auth/login
${YEN_ICON} =  css=#_player_login_area > div.login-menu.fn-left.fn-clear > a.player_memcashier
${DEPOSIT_ICON} =  css=#_player_login_area > div.login-menu.fn-left.fn-clear > a.player_deposit
${WITHDRAW_ICON} =  css=#_player_login_area > div.login-menu.fn-left.fn-clear > a.player_withdrawal
${FIND_ICON} =  css=#_player_login_area > div.login-menu.fn-left.fn-clear > a.player_report
${USERNAME_LINK} =  css=#_player_login_area > div.login-member.fn-left > a

#Login.robot
${LOGIN_LANG} =  css=#lang_select > option:nth-child(1)
${LOGIN_SUBMIT_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div > div > div.panel.panel-primary > div.panel-body > form > center > div > input
${LOGIN_USER} =  testley1
${LOGIN_PASSWORD} =  asdf123
${LOGIN_USER_TB} =  name=username
${LOGIN_PASSWORD_TB} =  name=password
${PLAYERSETTINGS_ICON} =  css=#_player_login_area > div.login-menu.fn-left.fn-clear > a.player_information

#Deposit.robot


#Find.robot
${REPORT_URL} =  http://player.cn.twinbet.com/player_center/iframe_viewReport
${REPORT_HEADING_LBL} =  css=#search-report

#ChangeLanguage.robot
${LANG_DROPDOWN} =  css=#lang-drop > button
${LANG_BAHASAINDONESIA} =  css=#lang-drop > ul > li:nth-child(1) > a
${ID_INDEX_URL} =  http://www.id.twinbet.com/
${LANG_VIETNAMESE} =  css=#lang-drop > ul > li:nth-child(2) > a
${VN_INDEX_URL} =  http://www.vn.twinbet.com/
${LANG_CHINESE} =  css=#lang-drop > ul > li:nth-child(2) > a

#Redirection.robot
${REDIRECT_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > a
${REDIRECT_HOME_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(1) > a
${REDIRECT_SLOT_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(2) > a
${REDIRECT_PLAYGROUND_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(3) > a
${REDIRECT_PHYSICAL_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(4) > a
${REDIRECT_LOTTERY_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(5) > a
${REDIRECT_PROMOTIONS_BTN} =  css=#bs-example-navbar-collapse-1 > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(6) > a
${CN_INDEX_URL} =  http://www.cn.twinbet.com/index.html
${SLOTS_URL} =  http://www.cn.twinbet.com/slots.html
${OPUSCASINO_URL} =  http://player.cn.twin88.net/iframe_module/goto_opus/casino/0/0/real/zh-CN
${SPORTSBOOK_URL} =  http://player.cn.twin88.net/iframe_module/goto_opus/sportsbook/0/0/real/zh-CN
${OPUSKENO_URL} =  http://player.cn.twin88.net/iframe_module/goto_opus/keno/0/0/real/zh-CN
${PROMOTIONS_URL} =  http://www.cn.twinbet.com/promotions.html

#LiveChat.robot
${CHAT_BTN} =  css=body > a
${CN_CHAT_URL} =  http://www.cn.twinbet.com/pub/live_chat_link/chn

#PlayerCenter.robot
${PC_VERIFY} =  css=body > div.panel.panel-primary > nav > div > div.navbar-header > button
${PC_URL} =  http://player.cn.twinbet.com/player_center/dashboard
${PC_INFO} =  css=#bs-example-navbar-collapse-1 > ul:nth-child(1) > li:nth-child(1) > a
${PC_USERNAME} =  auto_test3
${PC_REFCODE} =  SdyQaSCY
${PC_DEPOSIT} =  css=#deposit > a
${INFO_URL} =  http://player.cn.twinbet.com/iframe_module/iframe_playerSettings
${DEPOSIT_URL} =  http://player.cn.twinbet.com/player_center/manual_payment/1
${PC_WITHDRAW} =  css=#withdraw > a
${WITHDRAW_URL} =  http://player.cn.twinbet.com/player_center/withdraw