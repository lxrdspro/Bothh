#!/bin/sh
# Project-local Gradle launcher. The bundled lightweight wrapper JAR delegates
# to the Gradle executable supplied by the build environment.
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
exec java -cp "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
