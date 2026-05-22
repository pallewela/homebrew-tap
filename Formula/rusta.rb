class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.28"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.28/rusta-v1.0.28-aarch64-apple-darwin.tar.gz"
  sha256 "cbceb9fb1c4f6ed9d749f45cc70c0457b1e8fa724e670c705548141d5bf07dde"
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
