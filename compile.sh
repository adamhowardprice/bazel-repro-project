#!/bin/bash

set -x

BAZEL=bazel #~/git/client-ios/build/bin/bazel
$BAZEL build //src:test_binary \
    --cpu=ios_x86_64 \
    --crosstool_top=@client_core//other/bazel/cpp:toolchain \
    --apple_crosstool_top=@client_core//other/bazel/cpp:toolchain \
    --ios_minimum_os=8.0 \
    --ios_sdk_version=10.2 \
    --explain explain.log \
    --verbose_explanations \
    -s
