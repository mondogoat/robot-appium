# robot-appium

Prerequisites:

python3\
RobotFramework\
RobotFramework AppiumLibrary\
Appium\
AndroidStudio (emulator)


How to Run:

Get list of emulators\
`emulator -list-avds`

...Then launch the emulator\
`emulator -avd {EMULATOR_NAME}`

Install KaPartner app in the emulator device

In the terminal, run command
`python3 -m robot -d Output --loglevel TRACE tests/login_kapartner.robot`
