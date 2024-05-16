# Description
This contains a sample end to end UI automated tests for a flutter application

## Setup

### 1. Android Studio Installation

* Install Android Studio from [here](https://developer.android.com/studio).

- Add a virtual device using Android Studio Device Manager.
- Then open a device for running Android emulator tests.
- Make sure you have correct Android sdk, click on
  Android studio > Settings> Language and framework > Android sdk > sdk tools > android sdk command line tools, then download it. (It may take some time to download, be patient)


### 2. Xcode Installation for iOS Simulator

* Install Xcode from the App Store.

- Open Xcode, then navigate to Settings > Platforms, and make sure a version of Xcode is selected in the Command Line Tools dropdown.
- Add a device on the iOS Simulator.
- Ensure you have a simulator configured for running iOS tests.
- To open simulator from terminal :

````
open -a Simulator.app
````

### 3. After cloning the repository, open the project in either Android Studio or Visual Studio Code (or your preferred IDE).

* To enable dart support for the current project, click on android studio > settings> language and framework> then dart, then enable support dart for the current project, set up the path and click on ok. [Note: If dart is not configured]

* Install flutter [here](https://docs.flutter.dev/get-started/install).

- After downloading flutter run
````
flutter doctor 
````

Note: Make sure after doctor, it should not give any error.

### 4. To run the integration tests for this project:

- Run this command:

````
flutter drive \
  --driver=e2e_integration_test/lib/test_driver/integration_test.dart \
  --target=e2e_integration_test/lib/tests/login_test.dart         
````
Note: If multiple devices are opened, it will ask you to select a device.

- To run on a particular device directly from command, run:
````
flutter devices
````

select the emulator/simulator reference id then run,

````                                               
    flutter drive \                                              
  --driver=e2e_integration_test/lib/test_driver/integration_test.dart \
  --target=e2e_integration_test/lib/tests/login_test.dart -d device_reference_id
````

### 5. To run on web:

* To run on chrome:

  a. Download chrome driver: [click here](https://googlechromelabs.github.io/chrome-for-testing/)
    - In the above link go under stable, then choose your preffered chromedriver according to your mac

  b. To run on port:4444, run
  ```` chromedriver --port=4444 ````

  c. To run the tests on chrome,

````
flutter drive \
--driver=e2e_integration_test/lib/test_driver/integration_test.dart \
--target=e2e_integration_test/lib/tests/login_test.dart -d web-server --browser-name=chrome --no-headless
````

* To run on safari:

  a. Download safari driver: You can directly go to usr/bin/,
    - then run ```` safaridriver --port=4444 ````

  b. To run the tests on safari,

````
flutter drive \
--driver=e2e_integration_test/lib/test_driver/integration_test.dart \
--target=e2e_integration_test/lib/tests/login_test.dart -d web-server --browser-name=safari --no-headless
````

* To run on fireFox:

  a. Download gecko driver: https://github.com/mozilla/geckodriver/releases

  b. To run on port:4444, run
  ```` geckodriver --port=4444 ````

  c. To run the tests on firefox,

````
flutter drive \
--driver=e2e_integration_test/lib/test_driver/integration_test.dart \
--target=e2e_integration_test/lib/tests/login_test.dart -d web-server --browser-name=firefox --no-headless
````

