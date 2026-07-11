class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.3"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.3/rusta-v1.3.3-aarch64-apple-darwin.tar.gz"
  sha256 "1c7d711b1154fe5bc0ec77d70fd40e9aac7e82a28c963ab76b2d30d66b5e96f4"
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
