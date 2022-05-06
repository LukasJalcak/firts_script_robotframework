*** Settings ***
Documentation    automatic shopping test
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.czc.cz/
${browser}    chrome

*** Test Cases ***
User must sign in to check out
    [Documentation]    purchase of a specific product from the czc.cz portal
    [Tags]    Smoke
    open browser    ${url}    ${browser}
    maximize browser window
    wait until page contains    Souhlasím
    click button    css=#ccp-popup > div > div.ccp-controls > button.btn.btn-primary.btn--md.ccp-controls__all-cookies.js-all-cookies
    sleep    3s
    input text    id=fulltext    CR2032
    sleep    3s
    click button    css=#wrapper > header > div.header__background > div > div.fulltext > form > button
    sleep    3s
    click link    css=#tiles > div:nth-child(1) > div.img-wrapper > a
    wait until page contains    Philips CR2032 - 2ks
    click button    css=#product-price-and-delivery-section > div.pd-cta-buttons > button
    sleep    3s
    click element    css=#buy-mode-product > div.buy-mode-product__item.buttons > a
    sleep    3s
    click button    css=#basket-controls-container > div > button
    sleep    3s
    click element    css=#del-pay-frm__delivery-items > label:nth-child(2) > svg
    sleep    3s
    input text    id=frm-search-address    praha 5 andel
    sleep    3s
    press keys    none    ENTER
    sleep    3s
    click button    css=#popup-pick-up-points--czc_selected > div > div.pup-filters > div.pup-bottom > div.pup-points.thin-scrollbar > div.pup-points__item.pup-points__item--selected > div.pup-points__buttons > button.btn.btn-primary.pup-points__confirm.btn--sm
    sleep    3s
    click element    css=#del-pay-frm__payment-items > label:nth-child(1) > svg
    sleep    3s
    click button    css=#del-pay-frm__submit
    sleep    3s
    click element    css=#basket-table > div:nth-child(2) > div > div.op-login.clearfix > a
    sleep    3s
    input text    id=frm-name    jozkomrkvicka@test.com
    press keys    none    TAB
    sleep    5s
    close browser


*** Keywords ***
