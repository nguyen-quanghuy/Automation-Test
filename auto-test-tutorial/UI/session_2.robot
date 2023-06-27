*** Settings ***
Resource    key_word/LLK.resource
Resource    verify/verify_cellphone.resource


*** Variables ***
${name}    1
@{danh_sach}    1    2    5    9
@{NUMBERS}       ${1}    ${2}    ${5}
@{NAMES}         one     two     five

*** Test Cases ***

Mua Hang Cellphone
    Mo_Trang_Web    https://cellphones.com.vn/
    Mua Hang Cellphone
    Di Vao Gio Hang
    Tang So Luong Sp
    Kiem Tra Ten San Pham    Pin sạc dự phòng Energizer 10000mAh UE10046
    Kiem Tra So Luong    3
    Kiem Tra Gia Tien    1.170.000 ₫

Vi Du Ve If Else
    IF    ${name} == 2
        Log To Console    Bùi Thị Ngọc Linh
    ELSE
        Log To Console    Quang Huy
    END
    
    FOR    ${counter}    IN    1    6    0    2
        IF    ${counter} == 6
            CONTINUE
        END
        Log To Console    ${counter}
    END

    
    @{createListDemo}    Create List    1    2    3    5

    FOR    ${counter}    IN    ${createListDemo}
        Log To Console    ${counter}
    END

Lua Chon SP Mong Muon
    Mo_Trang_Web    https://cellphones.com.vn/
    Lua Chon San Pham


FOR-IN-ZIP
    FOR    ${number}    ${name}    IN ZIP    ${NUMBERS}    ${NAMES}
        Log Many    ${number}    ${name}
    END