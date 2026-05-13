class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "0.1.1"
  url "https://github.com/pallewela/rusta/releases/download/v0.1.1/rusta-v0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "7b164cd372e40b06024e9adcd63ad898de68b4411cbe0b750db1f732bdc6cbb7"
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
