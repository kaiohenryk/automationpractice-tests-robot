** Settings **
Library  SeleniumLibrary

** Variables **
${URL}  https://automationpratice.com.br/
${texto_esperado}  Login realizado

** Keywords **
Go to website
    Open Browser  ${URL}  chrome

Maximize page
    Maximize Browser Window

Click on the login link
    Wait
    Click Element  xpath://a[@href='/login']

Inform email
    Wait
    [Arguments]  ${email}
    Input Text  id:user  ${email}

Inform senha
    [Arguments]  ${password}
    Input Text  id:password  ${password}

Click on the login button
    Click Element  id:btnLogin

Check text login successful
    Wait
    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  ${texto_esperado}

Take screenshot
    Capture Page Screenshot

Wait
    Set Selenium Implicit Wait  10s

** Test Cases **
Login with correct email and password
    [Tags]  Login
    Go to website
    Maximize page
    Click on the login link
    Inform email  projectrobot@gmail.com
    Inform senha  robot123
    Click on the login button
    Check text login successful
    Take screenshot