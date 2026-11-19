class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.0"
  url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "00bed669e6f300dca3c2a293625d48220a930de5c231b16413447a738e2c1bc0"
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
