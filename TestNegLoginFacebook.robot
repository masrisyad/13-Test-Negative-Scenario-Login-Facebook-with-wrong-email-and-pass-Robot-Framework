*** Settings ***
Documentation                                      This is a negative test scenario by Risyad Abdala Ramadhan
Library                                            Selenium2Library

*** Variables ***
${url}                                              https://www.facebook.com
${browser}                                          chrome

*** Test Cases ***
User can open page
    [Documentation]                                 Login with wrong email and wrong password
    open browser                                    ${URL}    ${BROWSER}    options=add_experimental_option("excludeSwitches", ["enable-logging"])
    Maximize Browser Window
    wait until page contains                        ${url}                                         
    title should be                                 Facebook - Masuk atau Daftar
    Input Text 	                                    id:email 	            masicadrobottest
    Input Text 	                                    id:pass 	            test123
    Click element                                   name:login
    Close browser