#!/usr/bin/env bats

load _common

# This cookbook installs specific versions, so test for these exact patch versions.

@test "RVM 1.9.2-p320 can use nokogiri with openssl" {
  run_nokogiri_openssl_test "1.9.2-p320"
}

@test "RVM 1.9.3-p448 can use nokogiri with openssl" {
  run_nokogiri_openssl_test "1.9.3-p448"
}

@test "RVM 2.0.0-p195 can use nokogiri with openssl" {
  run_nokogiri_openssl_test "2.0.0-p195"
}
