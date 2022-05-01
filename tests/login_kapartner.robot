*** Settings ***
Library         AppiumLibrary


*** Variables ***
${LOGIN-BUTTON}     //android.widget.TextView[@text="LOGIN"]
${MOBILE-INPUT-BOX}     //android.widget.EditText[@text="+63"]
${UNREGISTERED-HEADER}      //android.widget.TextView[@text="Unregistered"]

#TEST DATA
${UNREGISTERED-MOBILE-NUMBER}       9190000001


*** Test Cases ***
Login with Unregistered Mobile Number
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.nccc.qruser  appActivity=host.exp.exponent.MainActivity  automationName=Uiautomator2
    Wait Until Page Contains Element    ${LOGIN-BUTTON}
    Tap     ${MOBILE-INPUT-BOX}
    Is Keyboard Shown
    Input Value     ${MOBILE-INPUT-BOX}      ${UNREGISTERED-MOBILE-NUMBER}
    Tap     ${LOGIN-BUTTON}
    Wait Until Page Contains Element  ${UNREGISTERED-HEADER}
    Element Should Be Visible  ${UNREGISTERED-HEADER}
