class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.1"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.1/rusta-v1.0.1-aarch64-apple-darwin.tar.gz"
  sha256 "1ee2af299101ec6eae6186b752c39882f8c10c4d48872522fa9f3660afbbcc29"
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
