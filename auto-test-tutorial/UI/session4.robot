*** Settings ***
Resource    key_word/LLK.resource
Resource    verify/verify4.resource

*** Test Cases ***
Kiem Tra Tinh Toan
    Mo_Trang_Web    https://www.google.com/search?q=may+tinh&oq=may+tinh+&aqs=chrome..69i57j0i512l9.8159j0j7&sourceid=chrome&ie=UTF-8
    Phep Tinh Toan    6    7    /
    Kiem Tra Tinh Toan    0.857143
    Sleep    3s
Kiem Tra Thuoc Tinh
    Mo_Trang_Web    https://soha.vn/kham-pha/song-xanh.htm
    Kiem Tra Thuoc Tinh    Chạy đua với nóng lên toàn cầu