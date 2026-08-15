class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.11"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.11/rusta-v1.3.11-aarch64-apple-darwin.tar.gz"
  sha256 "41172ec52a338210ba86c5766bdf543febb670951b9bc0463893ee4b6a2bb272"
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
