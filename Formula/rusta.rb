class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.4"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.4/rusta-v1.0.4-aarch64-apple-darwin.tar.gz"
  sha256 "dea3b9d14ea52fd33c85f3aeb29726f8a30ca9dc8b26a3f409aebe61965927bc"
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
