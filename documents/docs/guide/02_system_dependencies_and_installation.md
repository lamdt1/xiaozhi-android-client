# System Dependencies Installation

Android-Xiaozhi is a cross-platform application developed based on Flutter. Below are the system dependencies required to run and develop the project.

## Installing System Dependencies

### Windows
1. **Install Flutter SDK**
   - Please refer to the [Flutter Installation Guide](flutter_installation_guide.md) document to complete the Flutter SDK installation.

2. **Install Android Studio**
   - Download and install [Android Studio](https://developer.android.com/studio).
   - Install the Flutter and Dart plugins.

3. **Install Visual Studio Code (Optional)**
   - Download and install [Visual Studio Code](https://code.visualstudio.com/).
   - Install the Flutter and Dart plugins.

### macOS
1. **Install Flutter SDK**
   - Please refer to the [Flutter Installation Guide](flutter_installation_guide.md) document to complete the Flutter SDK installation.

2. **Install Xcode (for iOS Development)**
   - Download and install Xcode from the App Store.
   - Install Xcode command line tools: `xcode-select --install`.

3. **Install Android Studio (for Android Development)**
   - Download and install [Android Studio](https://developer.android.com/studio).
   - Install the Flutter and Dart plugins.

4. **Install CocoaPods (for iOS Dependency Management)**
   ```bash
   sudo gem install cocoapods
   ```

### Linux (Ubuntu)
1. **Install Flutter SDK**
   - Please refer to the [Flutter Installation Guide](flutter_installation_guide.md) document to complete the Flutter SDK installation.

2. **Install Development Tools**
   ```bash
   sudo apt-get update
   sudo apt-get install curl unzip git
   sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev
   ```

3. **Install Android Studio**
   - Download and install [Android Studio](https://developer.android.com/studio).
   - Install the Flutter and Dart plugins.

## Installing Project Dependencies

After cloning the project, you need to install the project dependencies:

```bash
# Enter project directory
cd xiaozhi-android-client

# Get Flutter dependencies
flutter pub get
```

## Running the Application

After completing the dependency installation, you can run the application:

```bash
# Check available devices
flutter devices

# Run the application
flutter run

# Or run on a specific device
flutter run -d <device_id>
```

## Important Notes
1. Ensure the Flutter SDK version matches the project requirements; using the latest stable version is recommended.
2. Android development requires a properly configured Java environment and Android SDK.
3. iOS development requires a macOS system and an Apple developer account.
4. The first run may take a long time to build the application.
5. If you encounter issues, please consult the official Flutter documentation or submit an Issue.