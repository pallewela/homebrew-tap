class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.4"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.4/rusta-v1.2.4-aarch64-apple-darwin.tar.gz"
  sha256 "85203d928b4c560b872181826ec66b5bf025f04546ef2626ce103ce8acb2a6cc"
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
