class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.16"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.16/rusta-v1.3.16-aarch64-apple-darwin.tar.gz"
  sha256 "0f000d5182e41b11acfba4068d76e8f192926a01f9228c3b3175ba2806435726"
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
