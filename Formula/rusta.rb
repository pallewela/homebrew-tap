class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.22"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.22/rusta-v1.0.22-aarch64-apple-darwin.tar.gz"
  sha256 "390758b0d9a9c247fffe8ec4361fd264bb420dd27dcdf8a4847c8592e482d9dd"
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
