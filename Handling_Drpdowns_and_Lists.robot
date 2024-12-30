*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://qavbox.github.io/demo/signup/

*** Test Cases ***
Handling drpdowns and texts

    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1seconds

    #select from list by label   sgender     male
    select from list by index   sgender     2
    select from list by value   sgender     male

    #Lists
    select from list by label       tools       Selenium
    select from list by label       tools       Cypress

    unselect from list by label       tools       Selenium


