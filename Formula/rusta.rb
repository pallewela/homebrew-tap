class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.23"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.23/rusta-v1.0.23-aarch64-apple-darwin.tar.gz"
  sha256 "e8abe9811f8145b3d4ca9ffdb64f53d0afb9bb9dcf317386a53bc6fa8376095d"
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
