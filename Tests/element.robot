*** Settings ***
Library  Selenium2Library



*** Variables ***



*** Test Cases ***
Get attribute element sample

    open browser  http://www.cn.twinbet.com/  chrome
    ${elem}=    Execute Javascript    return document.getElementById'nav);
    ${bg color}=    Call Method    ${elem}    value_of_css_property    background-color