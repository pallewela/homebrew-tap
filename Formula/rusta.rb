class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.16"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.16/rusta-v1.0.16-aarch64-apple-darwin.tar.gz"
  sha256 "ecc14ec6b77e436f0837c33bfce094a39b48299105a8cd4accb3c2befcb2eef3"
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
