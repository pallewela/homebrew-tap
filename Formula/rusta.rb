class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.17"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.17/rusta-v1.0.17-aarch64-apple-darwin.tar.gz"
  sha256 "59019095aa9427866fbf48ca381e8b7c2bfe1050181848a110aa507857fe8332"
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
