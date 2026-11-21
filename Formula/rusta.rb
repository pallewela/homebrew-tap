class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.25"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.25/rusta-v1.3.25-aarch64-apple-darwin.tar.gz"
  sha256 "e0da619713d0972ea178299fcc0c43c1752da9c50251f86197e7d096d7664586"
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
