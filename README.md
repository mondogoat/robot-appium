# robot-appium

How to Run:

Get list of emulators\
`emulator -list-avds`

...Then launch the emulator\
`emulator -avd {EMULATOR_NAME}`

...In another terminal window, run appium:\
`appium`

In the terminal, run command\
`python3 -m robot -d Output --loglevel TRACE tests/open_application.robot` 
