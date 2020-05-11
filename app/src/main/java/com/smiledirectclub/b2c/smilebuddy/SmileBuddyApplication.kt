package com.smiledirectclub.b2c.smilebuddy

import android.app.Application
import com.microsoft.appcenter.AppCenter
import com.microsoft.appcenter.analytics.Analytics
import com.microsoft.appcenter.crashes.Crashes


class SmileBuddyApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        AppCenter.start(
            this, "d1eb6c24-1887-4f9d-9cf3-2f28aa6fe4a7",
            Analytics::class.java, Crashes::class.java
        )
    }
}
