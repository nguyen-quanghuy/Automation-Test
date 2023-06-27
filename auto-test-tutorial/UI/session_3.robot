*** Settings ***
Resource    key_word/LLK.resource
Resource    verify/verify_cellphone.resource

Suite Setup    Log Suite Setup
Suite Teardown    Log Suite Teardown
Test Setup    Log Test Setup
Test Teardown    Log Test Teardown

*** Variables ***
${a}    5
${b}    4
${name}    Linh
@{Robot}    Linh    Huyen    Ngoc    Mai
@{Range}    1    10
*** Test Cases ***

DEMO_SUITE_01
    Log To Console    DEMO_SUITE_01

DEMO_SUITE_02
    Log To Console    DEMO_SUITE_02

DEMO_SUITE_03
    Log To Console    DEMO_SUITE_03

DEMO_SUITE_04
    Log To Console    DEMO_SUITE_04

DEMO_SUITE_05
    # ${m}    Set Variable    5
    # ${n}    Set Variable    4
    # ${c}    Evaluate    ${m} + ${n}
    # Log To Console    ${c}
    Log To Console    DEMO_SUITE_05

DEMO_SUITE_06
    IF    "${name}" == "Linh10"
        Log To Console    Hello
    ELSE
        Log To Console    BYE 10
    END
DEMO_SUITE_07
    FOR    ${counter}    IN    @{Robot}
        IF    "${counter}" == "Huyen"    BREAK
        Log To Console    ${counter}
    END
DEMO_SUITE_08
    FOR    ${element}    IN    @{Robot}
        IF    "${element}" == "Huyen"    CONTINUE    
            Log To Console    ${element}
            
    END
DEMO_SUITE_09
    FOR    ${element}    IN RANGE    @{Range}
        Log To Console   ${element}
        
    END
DEMO_SUITE_10
    Mo_Trang_Web    https://www.w3schools.com/bootstrap/bootstrap_carousel.asp
    FOR    ${counter}    IN RANGE    1    10
        Wait Until Element Is Visible    //span[@class="glyphicon glyphicon-chevron-right"]    timeout=10s
        Scroll Element Into View    //strong[text()="Note: "]
        Click Element    //span[@class="glyphicon glyphicon-chevron-right"]     
        Sleep    2s
        
    END

