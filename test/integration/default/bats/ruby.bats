#!/usr/bin/env bats

load _common

# This cookbook installs specific versions, so test for these exact patch versions.

@test "RVM 2.1.4 can use nokogiri with openssl" {
  run_nokogiri_openssl_test "2.1.4"
}
