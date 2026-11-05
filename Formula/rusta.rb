class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.21"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.21/rusta-v1.3.21-aarch64-apple-darwin.tar.gz"
  sha256 "2a6c8ea30a268cd36c7c9f2e79a920be698b54ff3faa624a2db12581eab1bb09"
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
