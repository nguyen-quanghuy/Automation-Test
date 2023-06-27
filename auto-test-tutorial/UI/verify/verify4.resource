*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Keywords ***

Kiem Tra Tinh Toan 
    [Arguments]    ${expect}
    Wait Until Element Is Visible    //div[@jsname="zLiRgc"]/span    timeout=10s
    ${actual} =    Get Text    //div[@jsname="zLiRgc"]/span
    Log To Console    ${actual}
    Log To Console    ${expect}
    Should Be Equal As Numbers    ${actual}    ${expect}
Kiem Tra Thuoc Tinh
    [Arguments]    ${expect}
    Wait Until Element Is Visible    //div[@class="hl-img"]/a    timeout=10s
    ${actual} =    Get Element Attribute    //div[@class="hl-img"]/a    title
    Log To Console    ${actual}
    Log To Console    ${expect}
    Should Be Equal    ${actual}    ${expect}
Kiem Tra Text
    [Arguments]    ${expect}
    Wait Until Element Is Visible    //div[@class="news-detail-content"]/div[5]//p    timeout=10s
    Scroll Element Into View    //div[@class="news-detail-content"]/div[5]//p
    ${actual} =    Get Text    //div[@class="news-detail-content"]/div[5]//p
    Log To Console    ${actual}
    Log To Console    ${expect}
    Should Contain    ${actual}    ${expect}