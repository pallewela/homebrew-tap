class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.23"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.23/rusta-v1.3.23-aarch64-apple-darwin.tar.gz"
  sha256 "cb1570accb47ed694957614b4a43f42b7552fcd1626ad325eb655a0633f568ae"
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
