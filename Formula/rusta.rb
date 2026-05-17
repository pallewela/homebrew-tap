class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.27"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.27/rusta-v1.0.27-aarch64-apple-darwin.tar.gz"
  sha256 "15f6021fedd392f618348044d74be0cd47a6a871e20d4681033375d4a20d8379"
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
