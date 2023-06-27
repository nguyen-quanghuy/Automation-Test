*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Kiem Tra Ten San Pham
    [Arguments]    ${expect}
    Wait Until Element Is Visible    //div[@class="product-item__info-detail"]/a[1]
    ${actual}=    Get Text    //div[@class="product-item__info-detail"]/a[1]
    Log To Console    ${expect}
    Log To Console    ${actual}
    Should Contain    ${actual}    ${expect}
Kiem Tra So Luong
    [Arguments]    ${expect}
    Wait Until Element Is Visible    //div[@class="number d-flex"]/input
    ${actual}=    Get Element Attribute    //div[@class="number d-flex"]/input    value   
    Log To Console    ${expect}
    Log To Console    ${actual}
    Sleep    3s
    Should Be Equal    ${actual}    ${expect}

Kiem Tra Gia Tien
    [Arguments]    ${expect}
    Sleep    2s
    Wait Until Element Is Visible    //div[@class="price d-flex flex-column align-items-end"]/span
    ${actual}=    Get Text    //div[@class="price d-flex flex-column align-items-end"]/span  
    Log To Console    ${expect}
    Log To Console    ${actual}
    Should Contain    ${actual}    ${expect}      
