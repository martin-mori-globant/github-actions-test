export SHELL="/bin/bash"
echo no | android create avd --force --name Device_Temporal --target "android-21" --abi "google_apis/armeabi-v7a" &&
/bin/bash -l -c "emulator -avd Device_Temporal -memory 512 -verbose -noaudio -no-window -no-boot-anim" & 
(
	adb wait-for-device
	emu_boot_completed=$(adb shell getprop sys.boot_completed | tr -d '\r')
	while [ "$emu_boot_completed" != "1" ]; do
		sleep 2
		emu_boot_completed=$(adb shell getprop sys.boot_completed | tr -d '\r')
	done
	adb install -r app/build/outputs/apk/app-debug.apk &&
	#adb push app/build/outputs/apk/app-debug.apk /cl.bci.sismo.mach.data/local/tmp/cl.bci.sismo.signup  &&
  	/bin/bash -l -c "bundle exec fastlane ui_test" && 
  	# adb emu kill
	adb devices | grep emulator | cut -f1 | 
	while read line; 
		do adb -s $line emu kill; 
	done
)
