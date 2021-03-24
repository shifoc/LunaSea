import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:lunasea/core.dart';

class LunaFirebaseCrashlytics {
    /// Returns an instance of [FirebaseCrashlytics].
    /// 
    /// Throws an error if [LunaFirebase.initialize] has not been called.
    static FirebaseCrashlytics get instance => FirebaseCrashlytics.instance;

    /// Set the enabled state of Firebase Crashlytics.
    void setEnabledState() {
        bool state = kReleaseMode && LunaDatabaseValue.ENABLE_FIREBASE_CRASHLYTICS.data;
        instance.setCrashlyticsCollectionEnabled(state);
    }
}