class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.15"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.15/rusta-v1.0.15-aarch64-apple-darwin.tar.gz"
  sha256 "166b6bd4d63b8cba640ae94b50c81542dee237e8185bef7c5e456e51a6389cff"
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
