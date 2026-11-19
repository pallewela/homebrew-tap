class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.1.1"
  url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "45c50829e93f80b278b06caaaf2f3f55dbcabd93c5e3c377eb9caff2112c627e"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
