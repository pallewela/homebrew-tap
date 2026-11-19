class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.1.0"
  url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "ab1e46621911fcd9128d7780171d80b34aed306fcee9021d96bc67413f92b8de"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "babashka", because: "both install a `bb` binary"

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
