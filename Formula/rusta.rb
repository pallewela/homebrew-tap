class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.6"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.6/rusta-v1.2.6-aarch64-apple-darwin.tar.gz"
  sha256 "7efe5ec6c12840833b3d962f6dc9cc2093264a5c950f40dbf7689d16b522ca07"
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
