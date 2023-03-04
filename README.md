# Flutter Stopwatch App Coding Test

This repository contains the code for a coding test for a Flutter stopwatch app. The app is a basic stopwatch that allows the user to start, stop, and reset the timer.

## Demo

Demo running on iOS 



https://user-images.githubusercontent.com/13827758/222875304-3fbfd717-1dba-4001-9d1c-03960729e445.mov



### Screenshots
Initial            |  Running          |  Stopped
:-------------------------:|:-------------------------:|:-------------------------:
 ![Simulator Screen Shot - iPhone 13 - 2023-03-04 at 12 18 01](https://user-images.githubusercontent.com/13827758/222875334-d1211a48-374d-451f-bb06-6d96a802b680.png) |  ![Simulator Screen Shot - iPhone 13 - 2023-03-04 at 12 19 47](https://user-images.githubusercontent.com/13827758/222875364-27440b95-f07f-4969-ae36-98af7b0319fc.png) | ![Simulator Screen Shot - iPhone 13 - 2023-03-04 at 12 12 12](https://user-images.githubusercontent.com/13827758/222875377-e8b5f1fe-0c44-4668-aff2-91f4dcc059f5.png)



## Requirements

- [Flutter](https://flutter.dev/docs/get-started/install) 3.3.4
- [Xcode](https://developer.apple.com/xcode/) (for iOS)
- [Android Studio](https://developer.android.com/studio) (for Android)

## Getting Started

To run the app, follow these steps:

1. Clone this repository to your local machine.
2. Open a terminal or command prompt and navigate to the project directory.
3. Run the command `flutter pub get` to install the app's dependencies.
4. Run the command `flutter run` to start the app in debug mode.

The app should open in an emulator or on your connected device.

## Features

The stopwatch app has the following features:

- Start/Stop button: Allows the user to start and stop the stopwatch timer.
- Reset button: Allows the user to reset the stopwatch timer to 0.
- Lap times: Displays a list of lap times when the user taps the "Lap" button.
- Stopwatch timer: Displays the elapsed time in minutes, seconds, and milliseconds.

## Testing

Overall coverage rate: 98.6%

To run overall coverage tests, use `make gen-coverage-report`
The app has been tested on Android and iOS devices and emulators.
