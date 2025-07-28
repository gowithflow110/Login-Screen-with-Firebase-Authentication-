plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") // ✅ Add this for Firebase
}

android {
    namespace = "com.novaXccelerate.ai_cv_maker"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "28.2.13676358"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.novaXccelerate.ai_cv_maker"
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug") // ⚠️ Change for real release builds
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ Google Sign-In
    implementation("com.google.android.gms:play-services-auth:20.7.0")

    // ✅ (Optional) Firebase Core - Only needed if you're using other Firebase services
    // implementation("com.google.firebase:firebase-analytics:21.5.0")
}
