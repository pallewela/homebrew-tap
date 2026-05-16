class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.24"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.24/rusta-v1.0.24-aarch64-apple-darwin.tar.gz"
  sha256 "a9e21a017e4cf38d91544d6db4437b7e2888f43ac733130039d8af00923a811e"
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
