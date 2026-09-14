# App Disabler v1.1

A small Android/Java GUI for managing packages per Android user/profile through Shizuku.

## What changed from v1
- Added `gradlew`, `gradlew.bat`, and `gradle/wrapper/gradle-wrapper.jar`.
- Uses only the public Shizuku `newProcess` API; no hidden Android `IPackageManager` imports.
- Discovers Android users with `cmd user list`.
- Explicitly runs `pm ... --user ID`, so inaccessible users are reported instead of silently assumed.
- Protects this app and the Shizuku package from bulk disable.

## Build
The supplied wrapper launcher delegates to the Gradle executable provided by the build environment.
Run:

    ./gradlew assembleDebug

or:

    gradlew.bat assembleDebug

For an external Android Java/Kotlin builder, import the ZIP as a Gradle Android project and make sure it does not overwrite/remove the `gradlew` and `gradle/wrapper` files.

## Requirements
- Android 6.0+
- Shizuku installed and running
- Shizuku permission granted to this app

The app uses Shizuku API 13.1.5 and provider 13.1.5.
