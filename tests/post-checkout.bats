#!/usr/bin/env bats

export BUILDKITE_PLUGIN_MISE_ENV="test"

setup() {
  load "$BATS_PLUGIN_PATH/load.bash"

  # Uncomment to enable stub debugging
  # export GIT_STUB_DEBUG=/dev/tty
}

@test "installs mise" {
  run $PWD/hooks/post-checkout

  assert_output --partial "yq"
  assert_output --partial "mise.test.toml"
  assert_output --partial "Installed mise version:"
  assert_success
}
