class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.4"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.4/rusta-v1.3.4-aarch64-apple-darwin.tar.gz"
  sha256 "870b9a9f435e5b6a1c5eaed06312492791420ee657cf68d73a7fd97c39057fb2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "rusta"
  end

  test do
    assert_match "macOS CLI", shell_output("#{bin}/rusta --help")
  end
end
