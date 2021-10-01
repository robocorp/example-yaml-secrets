*** Settings ***
Library           RPA.Robocorp.Vault

*** Tasks ***
Minimal task
    ${secrets}=    Get Secret    credentials
    Log To Console    \nLogging Secrets for DEMO purpose only
    Log To Console    ${secrets}
    Log To Console    google-apikey = ${secrets}[google-apikey]
    Log To Console    sap-login = ${secrets}[sap-login]
    Log To Console    sap-password = ${secrets}[sap-password]
    Log    Done.
