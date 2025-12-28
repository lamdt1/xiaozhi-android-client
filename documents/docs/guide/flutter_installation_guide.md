# Flutter Installation & Configuration Guide

This document provides detailed instructions for installing and configuring the AI Assistant application, including environment setup, dependency installation, and platform-specific configuration steps.

## 1. Flutter SDK Installation

### Windows
1. Download [Flutter SDK](https://flutter.dev/docs/get-started/install/windows)
2. Extract it to a directory without special characters or spaces (e.g., `C:\flutter`).
3. Add `flutter\bin` to your system PATH variable.
4. Open Command Prompt or PowerShell and run `flutter doctor` to verify and resolve potential issues.

### macOS
1. Install using Homebrew (Recommended):
   ```bash
   brew install --cask flutter
   ```
2. Or download [Flutter SDK](https://flutter.dev/docs/get-started/install/macos) and extract manually.
3. Add Flutter to PATH:
   ```bash
   export PATH="$PATH:`pwd`/flutter/bin"
   ```
4. Run `flutter doctor` to check the configuration.

### Linux
1. Download [Flutter SDK](https://flutter.dev/docs/get-started/install/linux)
2. Extract the file:
   ```bash
   tar xf flutter_linux_3.7.0-stable.tar.xz
   ```
3. Add Flutter to PATH:
   ```bash
   export PATH="$PATH:`pwd`/flutter/bin"
   ```
4. Run `flutter doctor` for configuration checks.

## 2. Install Development Tools

It is recommended to use one of the following IDEs for development:

- **Visual Studio Code**
  - Install [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
  - Install [Dart extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)

- **Android Studio / IntelliJ IDEA**
  - Install Flutter and Dart plugins (Preferences > Plugins > Search "Flutter").

## 3. Platform-Specific Setup

### Android Development
1. Install [Android Studio](https://developer.android.com/studio).
2. Install Android SDK (via Android Studio's SDK Manager).
3. Set up an Android device for development:
   - Enable USB debugging (Developer Options).
   - Or use an Android emulator.

### iOS Development (macOS only)
1. Install [Xcode](https://apps.apple.com/us/app/xcode/id497799835).
2. Configure an iOS emulator or a physical device.
3. Install CocoaPods:
   ```bash
   sudo gem install cocoapods
   ```

### Web Development
1. Ensure the Chrome browser is installed.
2. Enable Flutter web support:
   ```bash
   flutter config --enable-web
   ```

### Windows/macOS/Linux Desktop Development
1. Enable support for the corresponding platform:
   ```bash
   # Windows
   flutter config --enable-windows-desktop
   
   # macOS
   flutter config --enable-macos-desktop
   
   # Linux
   flutter config --enable-linux-desktop
   ```

## 4. Project Setup

1. Clone the project repository:
   ```bash
   git clone https://github.com/TOM88812/xiaozhi-android-client.git
   cd xiaozhi-android-client
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Configure Firebase or other cloud services if necessary (if applicable).

## 5. Configure AI Services

### Xiaozhi Service Configuration
1. Navigate to "Settings" > "Xiaozhi Service" in the app.
2. Enter the following information:
   - Name: Specify an identification name for the configuration.
   - WebSocket URL: WebSocket connection address for the Xiaozhi server.
   - MAC Address: Device MAC address (for Bluetooth devices).
   - Token: Authentication token.

### Dify Configuration
1. Visit the [Dify official website](https://dify.ai/) to create an account and get an API key.
2. Add a new Dify configuration in the app settings:
   - Name: Custom configuration name.
   - API Key: Key obtained from the Dify console.
   - API URL: API endpoint for the Dify service.

### OpenAI Configuration
1. Obtain an API key from the [OpenAI Developer Platform](https://platform.openai.com/).
2. Configure it in the app settings:
   - API Key: OpenAI API key.
   - Organization ID (optional): Fill in if using an organizational account.
   - Model: Select the desired GPT model (e.g., gpt-4, gpt-3.5-turbo).
   - System Prompt: Set the default system prompt.

## 6. Running the Application

```bash
# Run on a connected device
flutter run

# Run on a specific platform
flutter run -d windows
flutter run -d macos
flutter run -d chrome
flutter run -d <device-id>
```

## 7. Building Release Versions

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release

# Windows
flutter build windows --release

# macOS
flutter build macos --release

# Linux
flutter build linux --release
```

## 8. Permissions Description

The application may require the following permissions:
- **Microphone**: For voice recognition and recording.
- **Bluetooth**: For connecting to IoT devices.
- **Camera**: For visual recognition features.
- **Storage**: For saving audio and image files.

Please ensure you grant the required permissions before using the corresponding features.

## 9. Troubleshooting

### Typical Issues

1. **Flutter SDK Not Found**
   - Confirm Flutter is correctly added to your system PATH.
   - Check `flutter doctor` output for errors.

2. **Dependency Retrieval Failed**
   - Try using alternative mirrors if necessary.
   - Clear cache and retry:
     ```bash
     flutter clean
     flutter pub cache repair
     flutter pub get
     ```

3. **Compilation Errors**
   - View detailed error messages: `flutter run -v`.
   - Ensure you are using a supported Flutter SDK version (^3.7.0).

4. **iOS Build Failed**
   - Delete Pods directory and reinstall:
     ```bash
     cd ios
     rm -rf Pods
     pod install
     cd ..
     flutter run
     ```

5. **Android Gradle Sync Failed**
   - Edit `android/gradle.properties` to add proxy settings or use local mirrors.

## 10. References

- [Flutter Official Documentation](https://flutter.dev/docs)
- [Dart Official Documentation](https://dart.dev/guides)
- [Flutter Pub Package Management](https://pub.dev/)
- [Flutter Community Resources](https://flutter.dev/community)