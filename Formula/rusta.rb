class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.2.3"
  url "https://github.com/pallewela/rusta/releases/download/v1.2.3/rusta-v1.2.3-aarch64-apple-darwin.tar.gz"
  sha256 "f62e7ce00944e00655ab970c1f5a038dfd71de4b9bc3722a8d94da6d16539414"
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
