class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.9"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.9/rusta-v1.3.9-aarch64-apple-darwin.tar.gz"
  sha256 "e649e7e4b2cf7560f5c6d3fff1ce35094c1b32fb5e4776e1ef17dba141b8aa2c"
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
