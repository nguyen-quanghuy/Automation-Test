*** Settings ***
Resource    ../key_word/LLK.resource

*** Variables ***
${base_url_master}    http://localhost:8081
${base_url_product}    http://localhost:8082
${access_token}    eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik5wN1A0bmJmOGpUdXEwYUtoUHp2SSJ9.eyJodHRwczovL29tZy5jb20vZW1haWwiOiJsaWVubnRoMWFAd2VzLmNvbSIsImh0dHBzOi8vb21nLmNvbS9jbGllbnRJRCI6Im4zZ3hNamN6U0luTDRMeGJnb25TTDRpdThnaWlFY29SIiwiaHR0cHM6Ly93d3cudmluc2hvcC52bi9yb2xlcyI6W10sImlzcyI6Imh0dHBzOi8vYjJiLXFjLmF1LmF1dGgwLmNvbS8iLCJzdWIiOiJhdXRoMHw2MTFkYzcyNzJiZTc4ZDAwNzYxYzI2OWEiLCJhdWQiOiJXRVNfSUQiLCJpYXQiOjE2ODE5MTg0MTMsImV4cCI6MTY4MjAwNDgxMywiYXpwIjoibjNneE1qY3pTSW5MNEx4YmdvblNMNGl1OGdpaUVjb1IiLCJzY29wZSI6ImNyZWF0ZTp1c2VycyByZWFkOnVzZXJzIiwiZ3R5IjoicGFzc3dvcmQifQ.qTPkAa9q8TRo2NRca5kwUdkKUfo_iXR8JaRh1_uG8MbL24EYsU8uq2RekHr5zeeNGOHj-Vm2yKcp2yT25DzWkT9ZaLRLDtNuIggojDS--eJ90GfyVeDm-c23pZnyKvjdKY2DNWAoytnKii8ZM1XK-nUJvMGNQVzzQjk9zfX9hJU3NjTqt4K-WvvjMCX1MH2RJg-9Awmiqredn9-ayxy6SFY5cZuwAtGDG93McOqgpfQAKvsQI0CCdWYS4Tb0oEw--A4m3u5iB1UQqylAl02WeN22yY1XTM_7-21bZc1MpGMNhwTisotTceq3qZhlkZwxvW3BCr49cdl0VJekxwp1vA
${defaultHeader}    {"Content-Type": "application/json", "Authorization": "Bearer ${accessToken}", "x-dc-id": "8185"}

*** Test Cases ***
Hello World
    METHOD GET    ${base_url_product}/wms-product/products/4222    ${defaultHeader}
    Get product master id


    