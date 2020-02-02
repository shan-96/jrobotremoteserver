*** Settings ***
Resource         resource.robot
Test Template    Arguments Should Be Accepted

*** Test Cases ***
No Arguments
    no arguments     No Arguments

Required Arguments
    some argument    One Argument       some argument
    arg1 arg2        Two Arguments      arg1    arg2
    1 2 3 4 5 6 7    Seven Arguments    1    2    3    4    5    6    7

Arguments With Default Values
    one two three    Arguments With Default Values    one    two    three
    one two 3        Arguments With Default Values    one    two
    one 2 3          Arguments With Default Values    one

Variable Number Of Arguments
    ${EMPTY}         Variable Number Of Arguments
    One argument     Variable Number Of Arguments    One argument
    3 args now       Variable Number Of Arguments    3    args    now
    1 2 3 4 5 6      Variable Number Of Arguments    1    2    3    4    5    6

Required Arguments, Default Values and Varargs
    Hello world      Required Defaults And Varargs    Hello
    Hi tellus        Required Defaults And Varargs    Hi    tellus
    Hei taas maa     Required Defaults And Varargs    Hei    taas    maa
    1 2 3 4 5        Required Defaults And Varargs    1    2    3    4    5

*** Keywords ***
Arguments Should Be Accepted
    [Arguments]    ${expected}    ${keyword}    @{arguments}
    ${actual} =    Run Keyword    ${keyword}    @{arguments}
    Should Be Equal    ${actual}    ${expected}

