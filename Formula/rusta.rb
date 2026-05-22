class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.0"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.0/rusta-v1.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "b04d080a4d59057d6ec6453c1dd47d2ea843a6fbf43723812bf54961d0379aff"
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
