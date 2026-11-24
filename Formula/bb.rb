class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "853a5701fc00a01f652a213367bcd80315d01a93b2aef6de4562ecbcb163a8c7"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "01dca9f80120489d0f6b827c6e5c569787a199bbf5fdc51555dcef4d50c22510"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27996d03efca53d348d1882ec4eec1f8ad6f726df9714ddf4569d81014f749f5"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "58a8c5dbabfa6500ddca30e1ccdb92917127d43ab1b9b1265bf8b96295aee49e"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
