# frozen_string_literal: true

module Cross
  module Go

    # go tool dist list
    # go version go1.19.3 linux/amd64
    TARGETS = [
      "aix/ppc64",
      "android/386",
      "android/amd64",
      "android/arm",
      "android/arm64",
      "darwin/amd64",
      "darwin/arm64",
      "dragonfly/amd64",
      "freebsd/386",
      "freebsd/amd64",
      "freebsd/arm",
      "freebsd/arm64",
      "illumos/amd64",
      "ios/amd64",
      "ios/arm64",
      "js/wasm",
      "linux/386",
      "linux/amd64",
      "linux/arm",
      "linux/arm64",
      "linux/loong64",
      "linux/mips",
      "linux/mips64",
      "linux/mips64le",
      "linux/mipsle",
      "linux/ppc64",
      "linux/ppc64le",
      "linux/riscv64",
      "linux/s390x",
      "netbsd/386",
      "netbsd/amd64",
      "netbsd/arm",
      "netbsd/arm64",
      "openbsd/386",
      "openbsd/amd64",
      "openbsd/arm",
      "openbsd/arm64",
      "openbsd/mips64",
      "plan9/386",
      "plan9/amd64",
      "plan9/arm",
      "solaris/amd64",
      "windows/386",
      "windows/amd64",
      "windows/arm",
      "windows/arm64",
    ]

    ARM_VARIANT = {
      "linux/arm": ["5", "6", "7"],
    }

    TEST_TARGETS = [
      "darwin/amd64",
      "darwin/arm64",
      "linux/386",
      "linux/amd64",
      "linux/arm",
      "linux/arm64",
      "linux/riscv64",
      "windows/386",
      "windows/amd64",
      "windows/arm64",
    ]

    LESS_TARGETS = [
      "linux/amd64",
      "linux/arm64",
    ]

    def self.get_targets
      return ["linux/loong64"]
    end
  end
end