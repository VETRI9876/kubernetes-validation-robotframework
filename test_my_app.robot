*** Settings ***
Library  RequestsLibrary
Library  Process

*** Variables ***
${SERVICE_URL}    http://48.216.187.233    # Replace with your actual external IP

*** Test Cases ***
Verify My-App Service
    [Documentation]  Ensure the app is accessible
    ${response}=  GET  ${SERVICE_URL}
    Log  ${response.status_code}
    Should Be Equal As Numbers  ${response.status_code}  200
