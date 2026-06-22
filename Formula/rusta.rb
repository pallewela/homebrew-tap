class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.0"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.0/rusta-v1.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "c898d90b94bc8d521a788368c71cf750afa3769db690043a25a6b154a228cc6b"
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
