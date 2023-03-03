# Flutter Stopwatch App Coding Test

This repository contains the code for a coding test for a Flutter stopwatch app. The app is a basic stopwatch that allows the user to start, stop, and reset the timer.

## Demo

Demo running on iOS and Android

https://user-images.githubusercontent.com/13827758/222642403-616f0361-26e9-47df-b854-d6427ae35a40.mov

### Screenshots
Initial            |  Running          |  Stopped
:-------------------------:|:-------------------------:|:-------------------------:
![Simulator Screen Shot - iPhone 13 - 2023-03-03 at 13 49 29](https://user-images.githubusercontent.com/13827758/222642534-d8c255dd-163c-466f-a7b5-4d57297665cc.png) |  ![Simulator Screen Shot - iPhone 13 - 2023-03-03 at 13 49 48](https://user-images.githubusercontent.com/13827758/222642536-437ff4f6-7046-4edd-9523-e42dbe421ce9.png) | ![Simulator Screen Shot - iPhone 13 - 2023-03-03 at 13 49 51](https://user-images.githubusercontent.com/13827758/222642541-bcda282a-5070-4b1d-94ca-c0c1ee91ccfd.png)


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

Overall coverage rate: 97.7%

To run overall coverage tests, use `make gen-coverage-report`
The app has been tested on Android and iOS devices and emulators.
