class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.14"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.14/rusta-v1.3.14-aarch64-apple-darwin.tar.gz"
  sha256 "b372f1ea74bc64dc28f31b718ef466a77a92e5521351da9600a7ff81d2189f55"
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
