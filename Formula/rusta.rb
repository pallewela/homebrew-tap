class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.6"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.6/rusta-v1.3.6-aarch64-apple-darwin.tar.gz"
  sha256 "134e99e8f4d4b47629d7017a36f0a267aee857da6889275500a281da9fca3fd2"
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
