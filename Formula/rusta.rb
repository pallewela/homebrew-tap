class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.1.0"
  url "https://github.com/pallewela/rusta/releases/download/v1.1.0/rusta-v1.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "0f04a4db2789fdc0224eeefc43e1c0b6642d73a85e8f53a77dca273381a6de52"
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
