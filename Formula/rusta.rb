class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.24"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.24/rusta-v1.3.24-aarch64-apple-darwin.tar.gz"
  sha256 "645a9b74c1f63ad98d928b188c407fecd44d102140ec218a5042ae8c1872525b"
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
