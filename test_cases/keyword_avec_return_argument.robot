*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL1}         https://admin-demo.nopcommerce.com
${BROWSER1}     chrome 



*** Test Cases ***
Login test
  ${Titre}=   Lancer le navigateur   ${URL1}     ${BROWSER1}
  Log    ${Titre}   
  Input Text    id:Email    admin@yourstore.com
  Input Password    id:Password    admin
  Click Button    xpath://button[@type="submit"]
 

*** Keywords ***
Lancer le navigateur
  [Arguments]   ${URL_SITE}  ${NAVIGATEUR}
  Open Browser  ${URL_SITE}  ${NAVIGATEUR}
  Maximize Browser Window
  ${titre_page}=   Get Title
  [Return]      ${titre_page}  
  