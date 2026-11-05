class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.19"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.19/rusta-v1.3.19-aarch64-apple-darwin.tar.gz"
  sha256 "f0c750af0f3654c02bdf1f9a723a89d2fc4bfc8e28e5d63a57aad3c8a3a6bb17"
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
