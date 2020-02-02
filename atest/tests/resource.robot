*** Settings ***
Library          Remote    localhost:${PORT}${PATH}
Variables        variables.py

*** Variables ***
${PORT}              8270
${PATH}              /
${ORIG LOG LEVEL}    INFO

*** Keywords ***
Set Debug Log Level
    ${ORIG LOG LEVEL} =    Set Log Level    DEBUG
    Set Suite Variable    ${ORIG LOG LEVEL}

Reset Log Level
    Set Log Level    ${ORIG LOG LEVEL}
