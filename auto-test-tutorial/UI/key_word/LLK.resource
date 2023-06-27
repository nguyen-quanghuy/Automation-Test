*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${ten_dien_thoai}    Samsung Galaxy A73 (5G) 256GB
*** Keywords ***

Mo_Trang_Web
    [Arguments]    ${url}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Press_Enter
    [Arguments]    ${locator}
    SeleniumLibrary.Press Key    ${locator}    \ue007

Kiem Tra Ket Qua Tinh Toan
    [Arguments]    ${expect}    
    Wait Until Element Is Visible    //span[@id='cwos'] 
    ${actual}=    Get Text    //span[@id='cwos']    
    Should Be Equal    ${expect}    ${actual}

Nhap So 7
    Wait Until Element Is Visible    //span[@onclick="r(7)"]
    Click Element    //span[@onclick="r(7)"]

Nhap so 8
    Wait Until Element Is Visible    //span[@onclick="r(8)"]
    Click Element    //span[@onclick="r(8)"]
Nhap Dau Nhan
    Wait Until Element Is Visible    //span[@onclick="r('*')"]
    Click Element    //span[@onclick="r('*')"]

Kiem Tra KQTT Version 2
    [Arguments]    ${expect}
    Wait Until Element Is Visible    //div[@id="sciOutPut"]
    ${actual}=    Get Text    //div[@id="sciOutPut"]
    Should Contain    ${actual}    ${expect}


Mua Hang Cellphone
    Wait Until Element Is Visible    //a[contains(@href,'https://cellphones.com.vn/phu-kien/pi')]
    Scroll Element Into View    //a[contains(@href,'https://cellphones.com.vn/phu-kien/pi')]
    Click Element    //a[contains(@href,'https://cellphones.com.vn/phu-kien/pi')]
    Wait Until Element Is Visible    //h3[contains(text(),'Pin sạc dự phòng Energizer 1')]
    Click Element    //h3[contains(text(),'Pin sạc dự phòng Energizer 1')]

Di Vao Gio Hang
    Wait Until Element Is Visible    //button[@class="button add-to-cart-button"]
    Click Button    //button[@class="button add-to-cart-button"]
    Sleep    5s
    Click Element    //a[@class="header-item about-cart"]  


Tang So Luong Sp 
    Wait Until Element Is Visible    //span[text()='+']    timeout=50s
    FOR    ${sp}    IN RANGE    1    3   
        Log To Console    ${sp}
        Click Element    //span[text()='+']
        
    END      

Lua Chon San Pham
    FOR    ${counter}    IN RANGE    1    10
        Click Element    //div[contains(@class, 'cps-body')][1]//div[@class='cps-homepage'][1]/div[contains(@class, 'block-featured-product')]//div[@class='product-list']//div[@aria-label='Next slide']
        ${ten_dien_thoai}=    Get Text    //h3[contains(text(),'Samsung Galaxy A')]        
        Log To Console    ${ten_dien_thoai}
        # IF    "${ten_dien_thoai}" == "${ten_dien_thoai}"
        #     BREAK
        # END
        Log To Console    ${counter}
    END

Log Test Setup
    Log To Console    Hello

Log Test Teardown
    Log To Console    Bye

Log Suite Setup    
    Log To Console    Suite Setup only run once

Log Suite Teardown    
    Log To Console    Suite Teardown only run once

Nhap So Thu Nhat
    [Arguments]    ${sothu1}
    Wait Until Element Is Visible    //table[@class='ElumCf']    timeout=5s
    Click Element    //table[@class='ElumCf']//div[text()=${sothu1}]

Nhap So Thu Hai
    [Arguments]    ${sothu2}
    Wait Until Element Is Visible    //table[@class='ElumCf']
    Click Element    //table[@class='ElumCf']//div[text()=${sothu2}]

Phep Tinh
    [Arguments]    ${phepTinh}
    Wait Until Element Is Visible    //table[@class='ElumCf']
    IF    '${phepTinh}' == 'x'
       Click Element    //table[@class='ElumCf']//div[text()='×']    
    ELSE IF    '${phepTinh}' == '/'
        Click Element    //table[@class='ElumCf']//div[text()='÷']    
    ELSE
        Click Element    //table[@class='ElumCf']//div[text()='${phepTinh}']

    END

Phep Tinh Toan 
    [Arguments]    ${sothu1}    ${sothu2}    ${phepTinh}
    Nhap So Thu Nhat    ${sothu1}
    Phep Tinh    ${phepTinh}
    Nhap So Thu Hai    ${sothu2}
    Click Element    //table[@class='ElumCf']//div[text()='=']

Lay Thuoc Tinh 
    Wait Until Element Is Visible    //div[@class="hl-img"]/a[@title="Chạy đua với nóng lên toàn cầu"]
Man Hinh Thoi Su
    Wait Until Element Is Visible    //div[@class="inner clearfix"]/a[2]    timeout=10s
    Click Element    //div[@class="inner clearfix"]/a[2]
    Wait Until Element Is Visible    //div[@class="shnews_total"]/h3/a[@data-id="20230627181141456"]    timeout=10s
    Click Element    //div[@class="shnews_total"]/h3/a[@data-id="20230627181141456"]