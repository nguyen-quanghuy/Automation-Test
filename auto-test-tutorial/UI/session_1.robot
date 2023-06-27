*** Settings ***
Resource    key_word/LLK.resource

*** Test Cases ***
Hello_World
    Mo_Trang_Web    https://soha.vn/
    Scroll Element Into View    //h3/a[contains(@title, 'nhanh như chớp')]
    Wait Until Element Is Visible    //div[@id='toTop']
    Click Element    //div[@id='toTop']
    Sleep    0.5s
    Click Element    //div[@class='page-menu']//a[@title='Khám phá']
    Wait Until Element Is Visible    //h3/a[contains(@title, '3,4 tỷ đồng')]
    Scroll Element Into View    //h3/a[contains(@title, '3,4 tỷ đồng')]
    Click Element    //h3/a[contains(@title, '3,4 tỷ đồng')]    
    Scroll Element Into View    //p[contains(text(), 'Bức tượng con vịt')]
    Sleep    3s

Truy Cap Trang Chu Robot
   Mo_Trang_Web    https://robotframework.org/
   Click Element    //button[@name='go-to-Getting started']
   Click Element    //div[text()='Docs']
   Click Element    //a[text()='Guides (new)'] 
   Wait Until Element Is Visible    //div[contains(text(),'Selenium Library')]    timeout= 10s
   Scroll Element Into View    //div[contains(text(),'Selenium Library')]

Mo Trang Google
    Mo_Trang_Web    https://soha.vn/
    Wait Until Element Is Visible    //span[text()='Tìm kiếm']  
    Click Element    //span[text()='Tìm kiếm']
    Input Text    //div[@id='textSearch']    eagfvesa
    Press_Enter    //div[@id='textSearch']
    Sleep    3s

Tinh Toan Online
    Mo_Trang_Web        https://www.calculator.net/
    Nhap So 7
    Nhap Dau Nhan
    Nhap so 8
    Kiem Tra KQTT Version 2    56

Lay Thuoc Tinh Cua The Input
    Mo_Trang_Web    https://soha.vn/kham-pha.htm
    ${variable}=    Get Text    //div[@class="kbws-list"]//a[@href="/kham-pha/song-xanh.htm"]
    ${value}=    Get Element Attribute    //form[@id='ctl01']    id
    Log To Console    ${variable}
    Log To Console    ${value}    
    
    

    
