class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.13"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.13/rusta-v1.0.13-aarch64-apple-darwin.tar.gz"
  sha256 "baf9e67d19d334eab48ae47ec6a308aa3d49ed754b4eae1776080a7b4069ca35"
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
