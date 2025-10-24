#!/usr/bin/env bats

setup() {
  load "$BATS_PLUGIN_PATH/load.bash"

  # Uncomment to enable stub debugging
  # export GIT_STUB_DEBUG=/dev/tty
}

@test "calls git log" {
  export BUILDKITE_PLUGIN_MISE_ACTIVATE="true"

  run $PWD/hooks/post-checkout

  assert_output --partial "Installed mise:"
  assert_success
}