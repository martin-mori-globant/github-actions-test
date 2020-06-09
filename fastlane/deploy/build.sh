/bin/bash -l -c "bundle install"
/bin/bash -l -c "gem update fastlane"
/bin/bash -l -c "bundle exec fastlane build_dev"
