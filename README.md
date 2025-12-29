# meenmanam

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Flutter Commands

Here is a list of common Flutter commands:

### General
- `flutter doctor`: Diagnose information about the installed Flutter system.
- `flutter upgrade`: Upgrade your copy of Flutter.
- `flutter clean`: Delete the `build/` and `.dart_tool/` directories.
- `flutter pub get`: Get packages in a Flutter project.
- `flutter pub upgrade`: Upgrade packages in a Flutter project.

### Running
- `flutter run`: Run your Flutter app on an attached device or emulator.
- `flutter run -d <deviceId>`: Run on a specific device.
- `flutter run --release`: Run in release mode.

### Building
- `flutter build apk`: Build an Android APK.
- `flutter build appbundle`: Build an Android App Bundle.
- `flutter build ios`: Build an iOS application bundle (Mac only).
- `flutter build web`: Build a web application.

### Testing & Analysis
- `flutter test`: Run Flutter unit tests.
- `flutter analyze`: Analyze the project's Dart code.
- `flutter format .`: Format Dart files in the current directory.

For more details, use `flutter --help` or `flutter <command> --help`.
# meenmanam
swagger code generation
update api json 
./scripts/update_api.sh

flutter pub run build_runner build --delete-conflicting-outputs