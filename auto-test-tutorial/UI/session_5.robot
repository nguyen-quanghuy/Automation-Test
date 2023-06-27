*** Settings ***
Resource    key_word/LLK.resource
Resource    verify/verify4.resource

*** Test Cases ***

Kiem Tra Man Hinh 
    Mo_Trang_Web    https://soha.vn/
    Man Hinh Thoi Su
    Kiem Tra Text    kiểu mẫu