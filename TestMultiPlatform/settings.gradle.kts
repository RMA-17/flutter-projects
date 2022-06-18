pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
    }
}

rootProject.name = "TestMultiPlatform"
include(":TestMultiPlatformAndroid")
include(":shared")