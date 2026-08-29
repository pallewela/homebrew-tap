class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.15"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.15/rusta-v1.3.15-aarch64-apple-darwin.tar.gz"
  sha256 "f3aa53d4760472f29ca2d982c9a221807d9425edebecc870a654fb471d7654ee"
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
