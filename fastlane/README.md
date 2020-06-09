fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## Android
### android build_dev
```
fastlane android build_dev
```
Build Dev mode
### android build_automation
```
fastlane android build_automation
```
Build Automation mode
### android build_staging
```
fastlane android build_staging
```
Build Staging mode
### android build_prod
```
fastlane android build_prod
```
Build Release mode
### android unit_test_dev
```
fastlane android unit_test_dev
```
Runs unit tests on dev env
### android unit_test_staging
```
fastlane android unit_test_staging
```
Runs unit tests on staging env
### android ui_test
```
fastlane android ui_test
```
Runs instrumentation tests
### android code_coverage
```
fastlane android code_coverage
```
Create debug coverage report
### android linter_validation
```
fastlane android linter_validation
```
Lint tool 
### android deploy_develop_to_appcenter
```
fastlane android deploy_develop_to_appcenter
```
Submit a new dev build to app center
### android deploy_automation_to_appcenter
```
fastlane android deploy_automation_to_appcenter
```
Submit a new automation build to app center
### android deploy_automation_to_s3
```
fastlane android deploy_automation_to_s3
```
Upload automation APK to S3
### android submit_ui_tests
```
fastlane android submit_ui_tests
```
Submit UI tests on automation environment
### android deploy_staging_to_appcenter
```
fastlane android deploy_staging_to_appcenter
```
Submit a new staging build to app center
### android deploy
```
fastlane android deploy
```
Deploy a new version to the Google Play

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
