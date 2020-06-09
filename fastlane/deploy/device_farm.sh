/bin/bash -l -c "bundle install"
/bin/bash -l -c "bundle update"
/bin/bash -l -c "bundle exec fastlane aws_device_run_android"