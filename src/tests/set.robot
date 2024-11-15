*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
test setting count to 15
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  num  15 
    Click Button  Aseta
    Page Should Contain  nappia painettu 15 kertaa
