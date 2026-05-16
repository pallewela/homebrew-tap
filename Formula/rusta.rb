class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.8"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.8/rusta-v1.0.8-aarch64-apple-darwin.tar.gz"
  sha256 "31af2ab43954860573302046ffe7ac2bec3322116644ac0d1078dbde73e0c589"
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
