class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.30"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.30/rusta-v1.0.30-aarch64-apple-darwin.tar.gz"
  sha256 "a3f3f31c8021cb74b61964a3cc430c74cf7fcf5214507d8d32ec0845e41f6224"
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
