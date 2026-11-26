class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0bdea410980afb6b4856c26fd38881459a594abf29de47635ec376914d515575"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5687d2cd73b6f600d5b97eecfdf9aa089bb2aaf8b36dc476cde0bcd12bd6b390"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22ff3eaa1ff9f772f4650be079c94affe222f865de5e59616cd2da148e8d5611"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a74ba1ee0e539566404c94bf1d9c237946b3af6dbb377e6391095596d6bed82"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
