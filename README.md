# Flutter Stopwatch App Coding Test

This repository contains the code for a coding test for a Flutter stopwatch app. The app is a basic stopwatch that allows the user to start, stop, and reset the timer.

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
