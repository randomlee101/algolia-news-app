# Algolia News App

An Algolia News App Project

## System Information
- OS: Windows
- RAM: 16GB
- OS Version: 11


## Project Set-Up
Install Android Studio Latest Version [Android Studio Hedgehog | 2023.1.1 Patch 1 For Windows]
```yaml
https://developer.android.com/studio
```

Download Flutter
```yaml
https://docs.flutter.dev/get-started/install
```

Open Project In Android Studio
- Open Android Studio
- *File* > *Open*
- Proceed To The Location of The Cloned Repository and Select The Root Folder

_N.B:_ Install **Dart** and **Flutter** Plugins From Android Studio Market Place

Install All Packages Used For The Project
```yaml
flutter pub get
```

Auto-generate Models Using Freezed
```yaml
flutter pub run build_runner build --delete-conflicting-outputs
```

## State Management
Stateless widgets were employed across board to ensure a well-optimised application

States of children widgets were managed with Streams from the **rxdart** implementation and the **get_it** instance

## Run Flutter Application
Connect a virtual or physical device to Android Studio then run the following command in the terminal
```yaml
flutter run 
```

## Build Android Application
Open the command line and enter the following command
```yaml
flutter build apk 
```

## Conclusion
Thank you for reviewing this project! Recommendations and feedbacks are welcome and can be directed to the author below.

## Author
Daniel Folorunso | [folorunsodaniel5@gmail.com](mailto:folorunsodaniel5@gmail.com)

