class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.9"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.9/rusta-v1.0.9-aarch64-apple-darwin.tar.gz"
  sha256 "e6dc986d1e93b91cdb90e374ed84c47ba58f153a5610911abcdcf7e107a41e6e"
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
